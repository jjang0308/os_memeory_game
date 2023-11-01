import 'package:flutter/material.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/features/orders/order_screen.dart';
import 'package:os_memory_game/features/rank/rank_screen.dart';
import 'package:os_memory_game/main.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4A572),
      body: Center(
        child: Container(
          width: 1200, // 컨테이너의 너비
          height: 1100, // 컨테이너의 높이
          color: const Color(0xFFF0E1D0).withOpacity(0.8), // 컨테이너의 배경 색상 및 투명도
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      globalPrice = getRandomPrice();
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
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  ); // 세 번째 버튼을 눌렀을 때 실행할 동작
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(850, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.brown), // 세 번째 버튼의 배경색 변경
                ),
                child: const Text(
                  '홈 화면',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
