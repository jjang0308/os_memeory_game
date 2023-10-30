import 'package:flutter/material.dart';

class ChiGameButton extends StatefulWidget {
  final String imageName;
  final Function(String) onFoodSelected; // String 인자를 전달받는 함수로 변경

  const ChiGameButton({
    Key? key,
    required this.imageName,
    required this.onFoodSelected,
  }) : super(key: key);


  @override
  State<ChiGameButton> createState() => _ChiGameButtonState();
}

class _ChiGameButtonState extends State<ChiGameButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onFoodSelected(widget.imageName), // 버튼이 클릭되면 해당 이미지 이름 전달
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