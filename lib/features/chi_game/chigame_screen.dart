import 'package:flutter/material.dart';
//스크린 폴더 생성
class ChiGameScreen extends StatelessWidget {
  const ChiGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300.0), // AppBar의 높이 조절
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF79824),
          flexibleSpace: Container(
            padding: const EdgeInsets.only(bottom: 24.0), // 텍스트와 아래 여백 설정
            alignment: Alignment.bottomCenter, // 텍스트를 아래 정렬
            child: const Text(
              "00네\n꼬치꼬치",
              style: TextStyle(
                fontFamily: 'Soyo-Maple-BOLD',
                fontSize: 100, // 폰트 크기 조정
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF79824),
    );
  }
}