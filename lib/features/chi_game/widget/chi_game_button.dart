import 'package:flutter/material.dart';

class ChiGameButton extends StatelessWidget {
  final String imageName;

  const ChiGameButton({Key? key, required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("asd");
      },
      child: Container(
        width: 300, // 정사각형의 가로 길이
        height: 300, // 정사각형의 세로 길이
        color: const Color(0xFFF2C18C), // 버튼의 배경색
        child: Row(
          children: [
            Image.asset('assets/fonts/images/$imageName'), // imageName 사용
            const Text('', style: TextStyle(fontSize: 100),)
          ],
        ),
      ),
    );
  }
}