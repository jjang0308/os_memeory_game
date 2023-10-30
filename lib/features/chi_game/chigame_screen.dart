import 'package:flutter/material.dart';
import 'package:os_memory_game/features/chi_game/chigame_motion.dart';
import 'package:os_memory_game/features/chi_game/widget/chi_game_button.dart';

import 'package:os_memory_game/features/home/home_screen.dart';

List<Map<String, dynamic>> rightButtonImages = [
  {'index': 0, 'imageName': 'pimang.png', 'text': 'Left Button 1'},
  {'index': 1, 'imageName': 'steak.png', 'text': 'Left Button 2'},
  {'index': 2, 'imageName': 'pimang.png', 'text': 'Left Button 3'},
  {'index': 3, 'imageName': 'pimang.png', 'text': 'Left Button 4'},
  {'index': 4, 'imageName': 'pimang.png', 'text': 'Left Button 5'},
];

// 왼쪽 버튼 속성 리스트
List<Map<String, dynamic>> leftButtonImages = [
  {'index': 0, 'imageName': 'pimang.png', 'text': 'Left Button 1'},
  {'index': 1, 'imageName': 'steak.png', 'text': 'Left Button 2'},
  {'index': 2, 'imageName': 'pimang.png', 'text': 'Left Button 3'},
  {'index': 3, 'imageName': 'pimang.png', 'text': 'Left Button 4'},
  {'index': 4, 'imageName': 'pimang.png', 'text': 'Left Button 5'},
];

List<Widget> imageWidgets = [];
String selectedImageName = '';

//스크린 폴더 생성
class ChiGameScreen extends StatefulWidget {
  const ChiGameScreen({super.key});

  @override
  State<ChiGameScreen> createState() => _ChiGameScreenState();
}

class _ChiGameScreenState extends State<ChiGameScreen> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void onFoodSelected(String imageName) {
      setState(() {
        isButtonPressed = true;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF2C18C),
      body: Stack(
        children: [
          Positioned(
            top: 150,
            left: 550,
            child: Container(
              width: 10, // 막대기의 너비

              height: screenHeight * 0.5, // 막대기의 높이

              color: Colors.brown, // 나무 색상

              margin: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.25), // 수직으로 가운데 정렬
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.25),
            child: SizedBox(
              height: screenHeight * 0.9,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ChiGameButton(
                              imageName: leftButtonImages[index]
                                  ['imageName'], // 이미지 이름 전달
                              onFoodSelected: (imageName) {
                                // 'imageName' 인자를 받는 함수로 변경
                                onFoodSelected(
                                    leftButtonImages[index]['imageName']);
                                selectedImageName = imageName;
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ChiGameButton(
                              imageName: rightButtonImages[index]['imageName'],
                              onFoodSelected: (imageName) {
                                // 'imageName' 인자를 받는 함수로 변경
                                onFoodSelected(
                                    rightButtonImages[index]['imageName']);
                                selectedImageName = imageName; // 이미지 이름을 인자로 전달
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
//           AnimatedPositioned(
//   duration: const Duration(milliseconds: 300), // 애니메이션 지속 시간
//   top: isButtonPressed ? screenHeight * 0.25 : screenHeight * 0.5, // 버튼 누를 때 막대기로 이동
//   left: isButtonPressed ? screenWidth * 0.5 - 30 : screenWidth * 0.5 - 30, // 가운데 위치
//   child: ChiGameButton(
//     imageName: leftButtonImages[0]['imageName'],
//     // onPressed: () {
//     //   setState(() {
//     //     isButtonPressed = true; // 버튼을 눌렀을 때 플래그를 설정
//     //   });
//     // },
//   ),
// ),
          Positioned(
            top: 80,
            left: 440,
            child: Text(
              '00네',
              style: TextStyle(
                fontFamily: "Soyo-Maple-Bold",
                fontSize: 70,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 50
                  ..color = Colors.white,
              ),
            ),
          ),
          const Positioned(
            top: 80,
            left: 440,
            child: Text(
              '00네',
              style: TextStyle(
                fontSize: 70,
                color: Color(0xFFFDCA40),
                fontFamily: "Soyo-Maple-Bold",
              ),
            ),
          ),

          Stack(
            children: [
              Positioned(
                top: 210,
                left: 420,
                child: Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontFamily: "Soyo-Maple-Bold",
                    fontSize: 60,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..color = Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 210,
                left: 420,
                child: Text(
                  "꼬치꼬치",
                  style: TextStyle(
                    fontSize: 60,
                    color: Color(0xFFFDCA40),
                    fontFamily: "Soyo-Maple-Bold",
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: () {
                    print("dasdasdaSD");
                    // 버튼을 눌렀을 때 HomeScreen으로 이동
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const HomeScreen(), // HomeScreen 위젯으로 이동
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios, // 이미지 아이콘을 여기에 추가
                    size: 100, // 이미지 아이콘 크기 설정
                  ),
                  padding:
                      const EdgeInsets.all(100.0), // 모든 방향으로 16.0 포인트 패딩 추가
                ),
              ),
              Positioned(
                top: 100,
                left: 880,
                child: IconButton(
                  // 이미지 버튼을 만듭니다.
                  onPressed: () {
                    // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                  },
                  icon: const Icon(
                    Icons.volume_up, // 이미지 아이콘을 여기에 추가
                    size: 100, // 이미지 아이콘 크기 설정
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.5 - 450, // 텍스트의 상단 위치 조절
                left: screenWidth * 0.5 - 290, // 텍스트의 좌측 위치 조절
                child: const Text(
                  '주문서의 순서의 맞게 야채를 끼워 주세요.',
                  style: TextStyle(
                    fontSize: 35, // 텍스트 크기
                    color: Colors.black, // 텍스트 색상
                  ),
                ),
              ),
              if (isButtonPressed)
                ChiGameMotion(
                    isSelected: true,
                    positionLeft: 500,
                    positionTop: 1000,
                    imageName: selectedImageName),
            ],
          ),
        ],
      ),
    );
  }
}
