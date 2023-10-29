import 'package:flutter/material.dart';

import 'package:os_memory_game/features/home/home_screen.dart';

//스크린 폴더 생성
class ChiGameScreen extends StatefulWidget {
  const ChiGameScreen({super.key});

  @override
  _ChiGameScreenState createState() => _ChiGameScreenState();
}

class _ChiGameScreenState extends State<ChiGameScreen> {
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
    return Scaffold(
      backgroundColor: const Color(0xFFF2C18C),
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                top: 600,
                left: 20,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 900,
                left: 20,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1200,
                left: 20,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1500,
                left: 20,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1800,
                left: 20,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1800,
                left: 1280,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1500,
                left: 1280,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1200,
                left: 1280,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 900,
                left: 1280,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                    child: ElevatedButton.icon(
                      // 이미지 버튼을 만듭니다.
                      onPressed: () {
                        // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF2C18C), // 버튼 배경색
                      ),
                      icon: const Icon(
                        Icons.image, // 이미지 아이콘을 여기에 추가
                        size: 260, // 이미지 아이콘 크기 설정
                      ),
                      label: const Text(
                        '버튼 텍스트', // 버튼 텍스트
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 16.0, // 텍스트 크기
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: 1280,
                child: Container(
                  width: 300, // 정사각형의 가로 길이
                  height: 300, // 정사각형의 세로 길이
                  color: const Color(0xFFF2C18C), // 버튼의 배경색
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      print('test');
                      // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                    },
                    child: Image.asset(
                      'assets/fonts/images/pimang.png',
                      width: 391,
                      height: 236,
                    ),
                  )),
                ),
              ),
              Positioned(
                top: 80,
                left: 440,
                child: Text(
                  'OO네',
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
                  "OO네",
                  style: TextStyle(
                    fontSize: 70,
                    color: Color(0xFFFDCA40),
                    fontFamily: "Soyo-Maple-Bold",
                  ),
                ),
              ),
            ],
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
                left: 20,
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
                    size: 200, // 이미지 아이콘 크기 설정
                  ),
                  padding:
                      const EdgeInsets.all(100.0), // 모든 방향으로 16.0 포인트 패딩 추가
                ),
              ),
              Positioned(
                top: 100,
                left: 1350,
                child: IconButton(
                  // 이미지 버튼을 만듭니다.
                  onPressed: () {
                    // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
                  },
                  icon: const Icon(
                    Icons.volume_up, // 이미지 아이콘을 여기에 추가
                    size: 150, // 이미지 아이콘 크기 설정
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
