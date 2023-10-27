import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // 배경색을 흰색으로 설정
      body: Center(
        child: SizedBox(
          width: 1000, // 상자의 가로 크기를 조절하려면 원하는 값으로 설정
          height: 300, // 상자의 세로 크기를 조절하려면 원하는 값으로 설정
          // child: Container(
          //   color: Colors.black, // 상자의 배경색을 검은색으로 설정
          //   child: const Center(
          //     child: Text(
          //       '5초간 보여지는 것을 잘 기억하세요!',
          //       style: TextStyle(
          //         color: Colors.white, // 텍스트 색상을 흰색으로 설정
          //         fontSize: 100, // 텍스트 크기 설정 (선택사항)
          //         fontWeight: FontWeight.bold, // 텍스트 굵기 설정
          //         fontFamily: "Soyo-Maple-Bold",
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
