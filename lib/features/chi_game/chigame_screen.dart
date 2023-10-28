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
      backgroundColor:const Color(0xFFF2C18C), 
      body: 
      Stack(
        children: [         
          Stack(
            children: [
             ListView(
  children: <Widget>[
    const SizedBox(
      height: 600,
    ),
    Row(mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < 5; i++)
                ChiGameButton(
                  imageName: leftButtonImages[i]['imageName'],
                ),
            ],
          ),
        ),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              for (int i = 0; i < 5; i++)
                ChiGameButton(
                  imageName: rightButtonImages[i]['imageName'],
                ),
            ],
          ),
        ),
      ],
    ),
  ],
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
       Positioned( //홈으로 가기
  top: 0,
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
     Positioned(// 볼륨버튼
  top: 100,
  left: 1350,
  child:
       IconButton( // 이미지 버튼을 만듭니다.
        onPressed: () {},
        icon: const Icon(
          Icons.volume_up, // 이미지 아이콘을 여기에 추가
          size: 150, // 이미지 아이콘 크기 설정
        ),
        
      ),
),
      Positioned(
  top: 800, // 막대기의 세로 위치 조정 (조절 필요)
  left: 780, // 막대기의 가로 위치 조정 (조절 필요)
  child: Container(
    width: 20, // 막대기의 가로 길이
    height: 1200, // 막대기의 세로 길이
    color: Colors.brown, // 막대기의 색상 (갈색)
  ),
), 
const Positioned(
        top:550, // 텍스트의 세로 위치 조정 (조절 필요)
        left: 370, // 텍스트의 가로 위치 조정 (조절 필요)
        child: Text(
          '주문서의 순서의 맞게 야채를 끼워주세요.',
          style: TextStyle(
            fontSize: 50, // 텍스트 크기
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

