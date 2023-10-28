import 'package:flutter/material.dart';
import 'package:os_memory_game/features/five_count/five_count_screen.dart';
import 'package:os_memory_game/features/home/home_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 배경색을 검은색으로 설정
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              height: 300,
              color: Colors.black,
              child: const Center(
                child: Text(
                  '5초간 보여지는 것을 잘 기억하세요!',
                  style: TextStyle(
                    color: Colors.white, // 텍스트 색상을 흰색으로 설정
                    fontSize: 100, // 텍스트 크기 설정 (선택사항)
                    fontWeight: FontWeight.bold, // 텍스트 굵기 설정
                    fontFamily: "Soyo-Maple-Bold",
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // 첫 번째 버튼이 클릭되었을 때 수행할 동작
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white, // 버튼의 텍스트 색상을 검은색으로 설정
                    minimumSize: const Size(500, 100), // 버튼의 최소 크기를 조절
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // 내부 패딩을 조절
                  ),
                  child: const Text('취소',
                      style: TextStyle(fontSize: 50)), // 버튼 텍스트 크기를 조절
                ),
                ElevatedButton(
                  onPressed: () {
                    // 두 번째 버튼이 클릭되었을 때 수행할 동작
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FiveCountScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white, // 버튼의 텍스트 색상을 검은색으로 설정
                    minimumSize: const Size(500, 100), // 버튼의 최소 크기를 조절
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // 내부 패딩을 조절
                  ),
                  child: const Text('다음',
                      style: TextStyle(fontSize: 50)), // 버튼 텍스트 크기를 조절
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
