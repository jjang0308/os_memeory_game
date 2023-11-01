import 'package:flutter/material.dart';
import 'package:os_memory_game/features/calculator_game/calculator_game_screen.dart';
import 'package:os_memory_game/features/chi_game/chigame_motion.dart';
import 'package:os_memory_game/features/chi_game/widget/chi_game_button.dart';
import 'dart:math';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/features/rank/rank_screen.dart';
import 'package:os_memory_game/main.dart';

List<Map<String, dynamic>> rightButtonImages = [
  {'index': 0, 'imageName': 'bacon.png', 'text': 'Left Button 1'},
  {'index': 1, 'imageName': 'broccoli.png', 'text': 'Left Button 2'},
  {'index': 2, 'imageName': 'carrot.png', 'text': 'Left Button 3'},
  {'index': 3, 'imageName': 'cheese.png', 'text': 'Left Button 4'},
  {'index': 4, 'imageName': 'corn.png', 'text': 'Left Button 5'},
];

// 왼쪽 버튼 속성 리스트
List<Map<String, dynamic>> leftButtonImages = [
  {'index': 5, 'imageName': 'eggplant.png', 'text': 'Left Button 1'},
  {'index': 6, 'imageName': 'meat.png', 'text': 'Left Button 2'},
  {'index': 7, 'imageName': 'tomato.png', 'text': 'Left Button 3'},
  {'index': 8, 'imageName': 'potato.png', 'text': 'Left Button 4'},
  {'index': 9, 'imageName': 'shrimp.png', 'text': 'Left Button 5'},
];

int getRandomPrice() {
  var rand = Random();
  return rand.nextInt(10000)+8000;  // 10000은 원하는 최대값을 의미합니다. 필요에 따라 변경하실 수 있습니다.
}

//변경
List<Widget> imageWidgets = [];
String selectedImageName = '';
List<String> selectedImageNames = List.filled(5, '');

String name = '';
int price = getRandomPrice();

//스크린 폴더 생성
class ChiGameScreen extends StatefulWidget {



  const ChiGameScreen({super.key});

  @override
  State<ChiGameScreen> createState() => _ChiGameScreenState(); //장혁 바보
}

class _ChiGameScreenState extends State<ChiGameScreen> {
  bool isButtonPressed = false;
 
   String name = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void onFoodSelected(int index, String imageName) {
      setState(() {
        if (selectedImageNames.contains(imageName)) {
          // 이미 선택된 이미지일 경우, 선택을 취소합니다.
          selectedImageNames[index] = ''; // 이미지 이름 초기화
        } else {
          // 선택되지 않은 이미지일 경우, 선택합니다.
          int emptyIndex = selectedImageNames.indexOf(''); // 빈 인덱스를 찾습니다.
          if (emptyIndex != -1) {
            selectedImageNames[emptyIndex] = imageName; // 빈 인덱스에 이미지 이름을 저장합니다.
          }
        }
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
              height: screenHeight * 0.7,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  bool isSelected = selectedImageNames
                      .contains(leftButtonImages[index]['imageName']);
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ChiGameButton(
                              imageName: leftButtonImages[index]['imageName'],
                              isSelected: isSelected,
                              onFoodSelected: (selectedImageNames) {
                                onFoodSelected(index,
                                    leftButtonImages[index]['imageName']);
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
                              isSelected: isSelected,
                              onFoodSelected: (selectedImageNames) {
                                onFoodSelected(index,
                                    rightButtonImages[index]['imageName']);
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
          Positioned(
            top: 80,
            left: 440,
            child: Text(
              '$globalName네',
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
           Positioned(
            top: 80,
            left: 440,
            child: Text(
              '$globalName네',
              style: const TextStyle(
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
                    selectedImageNames = List.filled(5, '');
                    // print(selectedImageNames.size);
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
                top: 1500,
                left: 500,
                child: IconButton(
                
                  // 이미지 버튼을 만듭니다.
                  onPressed: () {
                    globalPrice = price;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const CarculatorGameScreen(), // HomeScreen 위젯으로 이동
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.next_plan, // 이미지 아이콘을 여기에 추가
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
              for (int i = 0; i < selectedImageNames.length; i++)
                if (selectedImageNames[i].isNotEmpty)
                  ChiGameMotion(
                    isSelected: true,
                    positionLeft: 470, // 꼬치에 꽂힌 이미지 간격 조절
                    positionTop: 1050 - (i * 150),
                    imageName: selectedImageNames[i],
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
