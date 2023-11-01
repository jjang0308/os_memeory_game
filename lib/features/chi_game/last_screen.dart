import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/features/orders/order_screen.dart';
import 'package:os_memory_game/features/rank/rank_screen.dart';
import 'package:os_memory_game/main.dart';
import 'package:os_memory_game/model/game_model.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  FireDBQuery fireDBQuery = FireDBQuery();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4A572),
      body: Center(
        child: Container(
          width: 1200, // 컨테이너의 너비
          height: 1100, // 컨테이너의 높이
          color: const Color(0xFFF0E1D0).withOpacity(0.8), // 컨테이너의 배경 색상 및 투명도
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              ' 꼬지꼬지에 실패하셨네요 ', // 텍스트 내용
              style: TextStyle(
                fontFamily: "Soyo-Maple-Bold",
                fontSize: 70,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.brown,
              ), // 텍스트 스타일
            ),
            const SizedBox(height: 30),
            Text(
              '또 한번 도전하시겠어요?!?!', // 텍스트 내용
              style: TextStyle(
                fontFamily: "Soyo-Maple-Bold",
                fontSize: 70,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.brown,
              ), // 텍스트 스타일
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const RankScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(400, 100)), // 버튼 크기 조절
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // 모서리를 둥글게 만듭니다.
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.brown), // 버튼 배경색 변경
                  ),
                  child: const Text(
                    '랭킹 확인',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 50), // 버튼 사이의 간격 조절
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const OrderScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(400, 100)), // 버튼 크기 조절
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // 모서리를 둥글게 만듭니다.
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.brown), // 버튼 배경색 변경
                  ),
                  child: const Text(
                    '다시 도전~',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                // 사용자의 이름을 입력받는 다이얼로그를 표시합니다.
                String name = await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('사용자 이름 입력'),
                      content: TextField(
                        controller:
                            TextEditingController(), // 사용자 이름을 입력 받는 텍스트 필드
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('확인'),
                          onPressed: () {
                            Navigator.of(context).pop(
                              (context.widget as AlertDialog).content as String,
                            );
                          },
                        ),
                      ],
                    );
                  },
                );

                if (name.isNotEmpty) {
                  // 데이터를 파이어베이스에 저장
                  await fireDBQuery.addData(GameModel(
                    name: name,
                    gochiScore: 0,
                    calScore: 0,
                  ));
                  // 이미지를 눌렀을 때 수행할 동작을 여기에 작성
                  // 데이터를 가져와야 하므로 fetchRankData 함수를 호출합니다.
                  fireDBQuery.getFirebaseData(ranks);
                }
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(850, 100)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
              ),
              child: const Text(
                '홈 화면',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
