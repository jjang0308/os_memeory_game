import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/argument/widget/Animated_widget.dart';
import 'package:os_memory_game/argument/gradation/gradation_widget.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/chi_game/chigame_screen.dart';
import 'package:os_memory_game/model/game_model.dart';

import '../features/rank/rank_screen.dart';

import '../main.dart';
 
 
 

class ArgumentScreen extends StatefulWidget {
  const ArgumentScreen({Key? key}) : super(key: key);

  @override
  State<ArgumentScreen> createState() => _ArgumentScreenState();
}

class _ArgumentScreenState extends State<ArgumentScreen> {
  String name = ''; // 사용자 입력을 저장할 변수
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Firebase Firestore 데이터를 로컬 데이터베이스에 동기화
  Future<void> syncDataFromFirestoreToLocal() async {
    final QuerySnapshot querySnapshot =
        await firestore.collection('gochiGame').get(); //테이블 명

    if (querySnapshot.docs.isNotEmpty) {
      await GameDBQuery.clearData();
      for (final doc in querySnapshot.docs) {
        final data = doc.data() as Map<String, dynamic>;
        final rank = Rank(
          name: data['name'],
          gochiScore: data['gochiScore'],
          calScore: data['calScore'],
        );
        for (GameModel rank in ranks) {
          GameDBQuery.insertModelListDB(rank); //로컬 데이터에 저장
        }
      }
    }
  }

  // 데이터 추가
  Future<void> addData(Rank rank) async {
    try {
      await firestore.collection('gochiGame').add({
        'name': rank.name,
        'gochiScore': rank.gochiScore,
        'calScore': rank.calScore,
      });
    } catch (e) {
      print('오류 발생: $e');
    }
  }

// 원격데이터에서 로컬 데이터로 가져오기
  void getFirebaseData() async {
    try {
      QuerySnapshot querySnapshot =
          await firestore.collection('gochiGame').get();

      if (querySnapshot.docs.isNotEmpty) {
        ranks.clear(); // 현재 목록 지우기
        for (var doc in querySnapshot.docs) {
          var data = doc.data() as Map<String, dynamic>;
          final rank = Rank(
            name: data['name'],
            gochiScore: data['gochiScore'],
            calScore: data['calScore'],
          );
          for (GameModel rank in ranks) {
            ranks.add(rank);
          }
          setState(() {});
          // 가져온 데이터를 ranks 목록에 추가
        }
      }
    } catch (e) {
      print('데이터 가져오기 중 오류 발생: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    // 데이터베이스에서 랭킹 데이터를 불러오는 부분
    loadRankData(); //로컬 데이터를 원격 데이터에 저장
    syncDataFromFirestoreToLocal(); // 원격 데이터를 로컬데이터로 가져오기
  }

  // 데이터베이스에서 랭킹 데이터를 불러오는 함수
  void insertData() async {
    for (GameModel rank in ranks) {
      GameDBQuery.insertModelListDB(rank);
    }
    setState(() {});
  }

//로컬 데이터를 원격 데이터에 저장
  Future<void> loadRankData() async {
    final localData = await GameDBQuery.getModelListDB();

    if (localData.isNotEmpty) {
      setState(() {
        ranks = localData;
      });
    } else {
      final querySnapshot = await firestore.collection('gochiGame').get();
      if (querySnapshot.docs.isNotEmpty) {
        ranks.clear();
        for (final doc in querySnapshot.docs) {
          final data = doc.data();
          final rank = GameModel(
            name: data['name'],
            gochiScore: data['gochiScore'],
            calScore: data['calScore'],
          );
          ranks.add(rank);
        }
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E1D0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const GradientText(
              text: '00네',
              fontSize: 80,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // 텍스트와 이미지를 수평 중앙에 배치
              children: [
                Image.asset(
                  'assets/images/RHcl.png',
                  width: 100,
                  height: 50,
                ),
                const Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'assets/images/RHcl.png',
                  width: 100,
                  height: 50,
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2.0,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0), // 패딩 적용
              child: Text(
                '가게 인수증',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 80),
            AnimatedTextWidget(
              // AnimatedTextWidget를 사용
              text: '$name 님을(를) 꼬치꼬치 사장님으로 임명합니다.',
              fontSize: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value; // 사용자 입력을 변수에 저장
                });
              },
              decoration: const InputDecoration(
                hintText: '이름을 입력하세요',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0,
                ),
              ),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            const AnimatedTextWidget(
              text: '1. 쟤료들을 선택해 알맞게 꽂으세요',
              fontSize: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 80),
            const AnimatedTextWidget(
              text: '2. 중간중간에 꼬치 가격을 물어볼거에요',
              fontSize: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 80),
            const AnimatedTextWidget(
              text: '3.  게임이 끝나면 점수가 나옵니다!!',
              fontSize: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 200),
            const AnimatedTextWidget(
              text: '=> 앞으로도 좋은 매출을 위해 맛있는 꼬치를 만들어 주세요!!',
              fontSize: 40,
              color: Color(0x99000000),
            ),
            InkWell(
              onTap: () {
                globalName = name;
                if (name.isNotEmpty) {
                  addData(Rank(name: name, gochiScore: 0, calScore: 0));
                  final rankModel = GameModel(
                    name: name,
                    gochiScore: 0,
                    calScore: 0,
                  );
                  GameDBQuery.insertModelListDB(rankModel);
                }
                // 이미지를 눌렀을 때 수행할 동작을 여기에 작성
                Navigator.of(context).push(
                  MaterialPageRoute(
                    
                      builder: (context) =>  const ChiGameScreen()),
                      
                );
              },
              child: Row(
                children: [
                  const Spacer(), // 텍스트와 이미지 사이 공간을 확보
                  Image.asset(
                    'assets/images/ehwkd.png',
                    width: 470,
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
