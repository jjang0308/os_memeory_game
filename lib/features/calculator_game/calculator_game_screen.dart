import 'package:flutter/material.dart';

class CarculatorGameScreen extends StatelessWidget {
  const CarculatorGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text(
          '깜짝게임 : 가격을 맞춰봐~!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: const Column(children: [
        SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
