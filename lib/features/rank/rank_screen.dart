import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/model/game_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<GameModel> ranks = [
  // GameModel(name: '김태우', gochiScore: 1560, calScore: 1300),
  // GameModel(name: '이태우', gochiScore: 1460, calScore: 100),
  // GameModel(name: '박태우', gochiScore: 1360, calScore: 400),
  // GameModel(name: '최태우', gochiScore: 1260, calScore: 1700),
  // GameModel(name: '노태우', gochiScore: 1160, calScore: 1090),
];

class RankScreen extends StatefulWidget {
  const RankScreen({Key? key}) : super(key: key);

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class Rank {
  final String name;
  final int gochiScore;
  final int calScore;

  Rank({
    required this.name,
    required this.gochiScore,
    required this.calScore,
  });
}

class _RankScreenState extends State<RankScreen> {
  bool isSoundOn = true; // 소리 상태 (켜짐: true, 꺼짐: false)
  // Firestore 변수로 가져오기
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
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text(
          'RANKING',
          style: TextStyle(
            fontSize: 70, // 텍스트 크기
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 5 // 텍스트 효과
              ..color = Colors.white, // 텍스트 효과 색상
          ),
          textAlign: TextAlign.center, // 텍스트를 가운데 정렬
        ),
        centerTitle: true, // AppBar 타이틀을 가운데 정렬
        leading: Padding(
          padding: const EdgeInsets.only(left: 20), // 왼쪽 패딩 추가
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios, // '<' 모양 아이콘
              size: 100, // 아이콘 크기 조절
            ),
            onPressed: () {
              // 화살표 버튼을 눌렀을 때 수행할 동작
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const HomeScreen(), // HomeScreen 위젯으로 이동
                ),
              );
            },
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: IconButton(
              icon: Icon(
                isSoundOn ? Icons.volume_up : Icons.volume_off, // 아이콘 변경
                size: 110,
              ),
              onPressed: () {
                setState(() {
                  isSoundOn = !isSoundOn; // 소리 상태를 토글
                  // 여기에 소리 켜기/끄기 로직을 추가할 수 있습니다.
                });
              },
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20), // 글씨와 AppBar 사이의 여백 조절
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 100, vertical: 8.0), // 왼쪽 패딩 추가

        child: ListView.builder(
          itemCount: ranks.length,
          itemBuilder: (context, index) {
            final gameModel = ranks[index]; // 랭킹 데이터에 해당하는 GameModel 객체 가져오기
            final Rank = index + 1; // 랭킹 순서
            return Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Rank$Rank Name: ${gameModel.name}, gochiScore: ${gameModel.gochiScore}, calScore: ${gameModel.calScore}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            );
          },
        ),
      ),
    );
  }
}
