import 'package:flutter/material.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
//스크린 폴더 생성
class ChiGameScreen extends StatelessWidget {
  const ChiGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(

      backgroundColor:const Color(0xFFF2C18C), 
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
      child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
const Positioned(
  top: 600,
  left: 1280,
  child: inGameButton(),
),
              Positioned(
                top: 100,
                left: 660,
                child: Text(
                  'OO네',
                  style: TextStyle(
                    fontFamily: "Soyo-Maple-Bold",
                    fontSize: 100,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..color = Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                left: 660,
                child: Text(
                  "OO네",
                  style: TextStyle(
                    fontSize: 100,
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
                top: 280,
                left: 610,
                child: Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontFamily: "Soyo-Maple-Bold",
                    fontSize: 100,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..color = Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 280,
                left: 610,
                child: Text(
                  "꼬치꼬치",
                  style: TextStyle(
                    fontSize: 100,
                    color: Color(0xFFFDCA40),
                    fontFamily: "Soyo-Maple-Bold",
                  ),
                ),
              ),
       Positioned(
  top: 20,
  left: 20,
  child: IconButton(
    onPressed: () {
      print("dasdasdaSD");
      // 버튼을 눌렀을 때 HomeScreen으로 이동
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(), // HomeScreen 위젯으로 이동
        ),
      );
    },
    icon: const Icon(
      Icons.arrow_back_ios, // 이미지 아이콘을 여기에 추가
      size: 150, // 이미지 아이콘 크기 설정
    ),
    padding: const EdgeInsets.all(100.0), // 모든 방향으로 16.0 포인트 패딩 추가
  ),
),
     Positioned(
  top: 100,
  left: 1350,
  child:
       IconButton( // 이미지 버튼을 만듭니다.
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

class inGameButton extends StatelessWidget {
  const inGameButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // 정사각형의 가로 길이
      height: 300, // 정사각형의 세로 길이
      color: const Color(0xFFF2C18C), // 버튼의 배경색
      child: Center(
        child: ElevatedButton.icon( // 이미지 버튼을 만듭니다.
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
    );
  }
}
