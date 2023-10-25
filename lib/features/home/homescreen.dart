import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                left: 180,
                child: Text(
                  'OO네',
                  style: TextStyle(
                    fontFamily: "Soyo-Maple-Bold",
                    fontSize: 250,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..color = Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                left: 180,
                child: Text(
                  "OO네",
                  style: TextStyle(
                    fontSize: 250,
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
                top: 430,
                left: 50,
                child: Text(
                  '꼬치꼬치',
                  style: TextStyle(
                    fontFamily: "Soyo-Maple-Bold",
                    fontSize: 250,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 50
                      ..color = Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 430,
                left: 50,
                child: Text(
                  "꼬치꼬치",
                  style: TextStyle(
                    fontSize: 250,
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
