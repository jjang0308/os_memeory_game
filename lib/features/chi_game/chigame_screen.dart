import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/features/calculator_game/calculator_game_screen.dart';
import 'package:os_memory_game/features/chi_game/chigame_motion.dart';
import 'package:os_memory_game/features/chi_game/widget/chi_game_button.dart';
import 'dart:math';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/main.dart';

List<Map<String, dynamic>> buttonImages = [
  {
    'index': 0,
    'imageName': 'eggplant.png',
    'text': 'Left Button 1',
    'boxColor': const Color(0xFF60305F)
  },
  {
    'index': 1,
    'imageName': 'meat.png',
    'text': 'Left Button 2',
    'boxColor': const Color(0xFFCB4144)
  },
  {
    'index': 2,
    'imageName': 'tomato.png',
    'text': 'Left Button 3',
    'boxColor': const Color(0xFFEC4A4A)
  },
  {
    'index': 3,
    'imageName': 'potato.png',
    'text': 'Left Button 4',
    'boxColor': const Color(0xffC49C4A)
  },
  {
    'index': 4,
    'imageName': 'shrimp.png',
    'text': 'Left Button 5',
    'boxColor': const Color(0xffFC5428)
  },
  {
    'index': 5,
    'imageName': 'bacon.png',
    'text': 'Left Button 1',
    'boxColor': const Color(0xffD85849)
  },
  {
    'index': 6,
    'imageName': 'broccoli.png',
    'text': 'Left Button 2',
    'boxColor': const Color(0xff8BA442)
  },
  {
    'index': 7,
    'imageName': 'carrot.png',
    'text': 'Left Button 3',
    'boxColor': const Color(0xffEE771B)
  },
  {
    'index': 8,
    'imageName': 'cheese.png',
    'text': 'Left Button 4',
    'boxColor': const Color(0xffF7BA00)
  },
  {
    'index': 9,
    'imageName': 'corn.png',
    'text': 'Left Button 5',
    'boxColor': const Color(0xffFEDF49)
  },
];

// // 왼쪽 버튼 속성 리스트
// List<Map<String, dynamic>> leftButtonImages = [

// ];

int getRandomPrice() {
  var rand = Random();
  return rand.nextInt(10000) +
      8000; // 10000은 원하는 최대값을 의미합니다. 필요에 따라 변경하실 수 있습니다.
}

//변경
List<Widget> imageWidgets = [];
String selectedImageName = '';
List<String> selectedImageNames = List.filled(5, '');

String name = '';
int price = getRandomPrice();

//스크린 폴더 생성
class ChiGameScreen extends StatefulWidget {
  final List chiIndex;
  const ChiGameScreen({super.key, required this.chiIndex});

  @override
  State<ChiGameScreen> createState() => _ChiGameScreenState(); //장혁 바보
}

class _ChiGameScreenState extends State<ChiGameScreen> {
  bool isButtonPressed = false;
  String name = '';
  List<int> selectedChi = [];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void onFoodSelected(int index, String imageName) {
      setState(() {
        {
          // 선택되지 않은 이미지일 경우, 선택합니다.
          int emptyIndex = selectedImageNames.indexOf(''); // 빈 인덱스를 찾습니다.
          if (emptyIndex != -1) {
            selectedImageNames[emptyIndex] = imageName; // 빈 인덱스에 이미지 이름을 저장합니다.
          }
        }
      });
    }

    void deleteButton() {
      if (selectedImageNames.isNotEmpty) {
        int lastIndex = selectedImageNames.lastIndexOf(''); // 마지막 빈 인덱스를 찾습니다.
        if (lastIndex != -1) {
          selectedImageNames[lastIndex] = ''; // 마지막 빈 인덱스를 지웁니다.
          setState(() {});
        }
      }
    }

    print(widget.chiIndex);
    print(selectedChi);
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
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
                      .contains(buttonImages[index]['imageName']);
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ChiGameButton(
                              boxColor: buttonImages[index]['boxColor'],
                              imageName: buttonImages[index]['imageName'],
                              isSelected: isSelected,
                              onFoodSelected: (selectedImageNames) {
                                onFoodSelected(
                                    index, buttonImages[index]['imageName']);
                                selectedChi.add(index);
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
                              boxColor: buttonImages[index + 5]['boxColor'],
                              imageName: buttonImages[index + 5]['imageName'],
                              isSelected: isSelected,
                              onFoodSelected: (selectedImageNames) {
                                onFoodSelected(
                                  index,
                                  buttonImages[index + 5]['imageName'],
                                );
                                selectedChi.add(index + 5);
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
            //ypdate
            top: 1500, // 원하는 상단 위치 (상단 여백)
            left: 500, // 원하는 우측 위치 (우측 여백)
            child: ElevatedButton(
              onPressed: deleteButton, // "수정" 버튼을 눌렀을 때 deleteButton 함수 실행
              child: Text(
                "수정",
                style: TextStyle(
                  fontFamily: "Maple-Bold",
                  fontSize: 60,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.white,
                  shadows: const <Shadow>[
                    Shadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Colors.grey,
                    ),
                  ],
                ),
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
                    Navigator.of(context).pushReplacement(
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
              if (selectedChi.length == widget.chiIndex.length)
                Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor.withOpacity(0.7),
                  ),
                  padding: const EdgeInsets.only(top: 200),
                  child: Icon(
                    listEquals(selectedChi, widget.chiIndex)
                        ? Icons.panorama_fish_eye
                        : Icons.close,
                    size: screenWidth,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
