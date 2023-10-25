import 'package:flutter/material.dart';
//스크린 폴더 생성
class ChiGameScreen extends StatelessWidget {
  const ChiGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: const Color(0xFFF79824),
       title: const Text("00네 \n꼬치꼬치",
       style: TextStyle(
        fontFamily: 'Soyo-Maple-REGULAR',
        fontSize: 100,
       ),),

      ),
      backgroundColor: const Color(0xFFF79824),
      
    );
  }
}