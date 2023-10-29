import 'package:flutter/material.dart';
import 'package:os_memory_game/features/chi_game/widget/chi_game_button.dart';

import 'package:os_memory_game/features/home/home_screen.dart';

//스크린 폴더 생성
class ChiGameScreen extends StatefulWidget {
  const ChiGameScreen({super.key});

  @override
  _ChiGameScreenState createState() => _ChiGameScreenState();
}

class _ChiGameScreenState extends State<ChiGameScreen> {


  String name='태우';


  List<Map<String, dynamic>> rightButtonImages = [
    {'imageName': 'pimang.png', 'text': 'Button 1'},
    {'imageName': 'pimang.png', 'text': 'Button 2'},
    {'imageName': 'pimang.png', 'text': 'Button 3'},
    {'imageName': 'pimang.png', 'text': 'Button 4'},
    {'imageName': 'pimang.png', 'text': 'Button 5'},
  ];

// 왼쪽 버튼 속성 리스트
  List<Map<String, dynamic>> leftButtonImages = [
    {'imageName': 'pimang.png', 'text': 'Left Button 1'},
    {'imageName': 'pimang.png', 'text': 'Left Button 2'},
    {'imageName': 'pimang.png', 'text': 'Left Button 3'},
    {'imageName': 'pimang.png', 'text': 'Left Button 4'},
    {'imageName': 'pimang.png', 'text': 'Left Button 5'},
  ];

  int numberOfImagesDropped = 0;

  @override
  Widget build(BuildContext context) {

       final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
   return Scaffold(
      
      backgroundColor:const Color(0xFFF2C18C), 
      body: 
      Stack(
        
        children: [         
          Padding(
            padding: EdgeInsets.only(top: screenHeight*0.25),
            child: SizedBox(
             height: screenHeight 
             *0.9,
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
                 imageName: leftButtonImages[index]['imageName'],
                 
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
  top: 150,
  left: 550,
  child:   Container(
  
    width: 10, // 막대기의 너비
  
    height: screenHeight * 0.5, // 막대기의 높이
  
    color: Colors.brown, // 나무 색상
  
    margin: EdgeInsets.symmetric(vertical: screenHeight * 0.25), // 수직으로 가운데 정렬
  
  ),
),
Positioned(
      top: screenHeight * 0.5 - 450, // 텍스트의 상단 위치 조절
      left: screenWidth * 0.5 -290, // 텍스트의 좌측 위치 조절
      child: const Text(
        '주문서의 순서의 맞게 야채를 끼워 주세요.',
        style: TextStyle(
          fontSize: 35, // 텍스트 크기
          color: Colors.black, // 텍스트 색상
        ),
      ),
    ),
            ],
          ),
        ],
      ),
    );
  }
}
