import 'package:flutter/material.dart';

class CarculatorGame extends StatelessWidget {
  const CarculatorGame({super.key});

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
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
