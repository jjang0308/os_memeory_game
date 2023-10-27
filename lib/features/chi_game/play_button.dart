import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: 100, // 정사각형의 가로 길이
        height: 100, // 정사각형의 세로 길이
        color: Colors.orange, // 버튼의 배경색
        child: const Center(
          child: Text(
            '버튼', // 버튼 텍스트
            style: TextStyle(
              color: Colors.white, // 텍스트 색상
              fontSize: 16.0, // 텍스트 크기
            ),
          ),
        ),
      ),
    );
  }
}
