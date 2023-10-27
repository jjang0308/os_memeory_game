import 'package:flutter/material.dart';

class RankScreen extends StatelessWidget {
  const RankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: const Color(0xFFF79824),
        // title: Text(
        //   'RANKING',
        //   style: TextStyle(
        //     fontSize: 70, // 텍스트 크기
        //     foreground: Paint()
        //       ..style = PaintingStyle.stroke
        //       ..strokeWidth = 5 // 텍스트 효과
        //       ..color = Colors.white, // 텍스트 효과 색상
        //   ),
        //   textAlign: TextAlign.center, // 텍스트를 가운데 정렬
        // ),
        centerTitle: true, // AppBar 타이틀을 가운데 정렬
        leading: Padding(
          padding: const EdgeInsets.only(left: 20), // 왼쪽 패딩 추가
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios, // '<' 모양 아이콘
              size: 100, // 아이콘 크기 조절
            ),
            onPressed: () {
              // 화살표 버튼을 눌렀을 때 수행할 동작
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: IconButton(
              icon: const Icon(
                Icons.volume_up,
                size: 110, // 아이콘 크기 고정
              ),
              onPressed: () {},
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20), // 글씨와 AppBar 사이의 여백 조절
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF2C18C),
      body: const Column(
        children: [
          SizedBox(height: 300), // 원하는 여백을 설정
          Text(
            '★ RANK 1. 김태우 1560점',
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
            ),
          ),
          // 다른 컨텐츠 추가 가능
        ],
      ),
    );
  }
}
