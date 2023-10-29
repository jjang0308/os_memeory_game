import 'package:flutter/material.dart';

class ChiGameButton extends StatefulWidget {
  final String imageName;
  final Function onPressed;

  const ChiGameButton({Key? key, required this.imageName, required this.onPressed}) : super(key: key);

  @override
  State<ChiGameButton> createState() => _ChiGameButtonState();
}

class _ChiGameButtonState extends State<ChiGameButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed(),
      child: Container(
        width: 200, // 정사각형의 가로 길이
        height: 200, // 정사각형의 세로 길이
        color: const Color(0xFFF2C18C), // 버튼의 배경색
        child: Row(
          children: [
            Image.asset('assets/fonts/images/${widget.imageName}'), // imageName 사용
            const Text('', style: TextStyle(fontSize: 100),)
          ],
        ),
      ),
    );
  }
}