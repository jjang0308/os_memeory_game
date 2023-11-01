import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/orders/five_count_screen.dart';
import 'package:os_memory_game/features/rank/rank_screen.dart';

import '../home/home_screen.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  FireDBQuery fireDBQuery = FireDBQuery();
  int score = 100;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$score" "점",
            style: TextStyle(
              fontSize: 220,
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
              fontFamily: "Maple-Bold",
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Text(
            ' 꼬지꼬지에 실패하셨습니다. ', // 텍스트 내용
            style: TextStyle(
              fontSize: 65,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Maple-Bold",
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            '또 한번 도전하시겠어요?!?!', // 텍스트 내용
            style: TextStyle(
              fontSize: 65,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Maple-Bold",
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const RankScreen(),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.45,
                  height: screenWidth * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        width: 8),
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    '랭킹',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 65,
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Maple-Bold",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 50), // 버튼 사이의 간격 조절
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const FiveCountScreen(),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.45,
                  height: screenWidth * 0.12,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        width: 8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(top: 2),
                  child: const Text(
                    '다시하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 65,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Maple-Bold",
                    ),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: screenWidth * 0.4,
                height: screenWidth * 0.12,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      width: 8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(top: 2),
                child: const Text(
                  '홈',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 65,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Maple-Bold",
                  ),
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (context) => const HomeScreen(),
          //       ),
          //     );
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 10),
          //     child: Icon(
          //       Icons.home,
          //       size: screenWidth * 0.2,
          //       color: Theme.of(context).colorScheme.tertiaryContainer,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
