import 'package:flutter/material.dart';
//스크린 폴더 생성
class ChiGameScreen extends StatelessWidget {
  const ChiGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color(0xFFF79824),
      body: Stack(
        children: [
          Stack(
            children: [
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
            ],
          ),
        ],
      ),
    );
  }
}