import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/orders/five_count_screen.dart';
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
  FireDBQuery fireDBQuery = FireDBQuery();

  @override
  void initState() {
    super.initState();
    // 데이터베이스에서 랭킹 데이터를 불러오는 부분
    fireDBQuery.getFirebaseData(ranks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E1D0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // 텍스트와 이미지를 수평 중앙에 배치
                children: [
                  Image.asset(
                    'assets/images/RHcl.png',
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    ' 가게인수증',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 80),
                    // style: TextStyle(
                    //   fontSize: 80,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                  Image.asset(
                    'assets/images/RHcl.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).primaryColorDark,
              thickness: 2.0,
            ),
            const SizedBox(height: 80),
            Text(
              '$name 님을(를) 꼬치꼬치 사장님으로 임명합니다.',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 40,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                onChanged: (value) {
                  setState(
                    () {
                      name = value; // 사용자 입력을 변수에 저장
                    },
                  );
                },
                decoration: const InputDecoration(
                  hintText: '서명',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                ),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 30,
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '1. 쟤료들을 선택해 알맞게 꽂으세요',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 40,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 40),
            Text(
              '2. 중간중간에 꼬치 가격을 물어볼거에요',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 40,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 40),
            Text(
              '3.  게임이 끝나면 점수가 나옵니다!!',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 40,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 100),
            Text(
              '앞으로도 맛있는 꼬치를 만들어 주세요!!',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 40,
                    color: const Color.fromARGB(255, 63, 63, 63),
                  ),
            ),
            GestureDetector(
              onTap: () {
                if (name.isNotEmpty) {
                  // 데이터를 파이어베이스에 저장
                  fireDBQuery.addData(
                    GameModel(
                      name: name,
                      gochiScore: 0,
                      calScore: 0,
                    ),
                  );
                  globalName = name;
                  fireDBQuery.getFirebaseData(ranks);
                  // 이미지를 눌렀을 때 수행할 동작을 여기에 작성
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const FiveCountScreen()),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 400),
                child: Image.asset(
                  'assets/images/ehwkd.png',
                  width: 650,
                  height: 380,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
