import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/model/game_model.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({Key? key, required this.db}) : super(key: key);
  final GameModel db;

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  bool isSoundOn = true; // 소리 상태 (켜짐: true, 꺼짐: false)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: const Color(0xFFF79824),
        title: Text(
          'RANKING',
          style: TextStyle(
            fontSize: 70, // 텍스트 크기
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 5 // 텍스트 효과
              ..color = Colors.white, // 텍스트 효과 색상
          ),
          textAlign: TextAlign.center, // 텍스트를 가운데 정렬
        ),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const HomeScreen(), // HomeScreen 위젯으로 이동
                ),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: IconButton(
              icon: Icon(
                isSoundOn ? Icons.volume_up : Icons.volume_off, // 아이콘 변경
                size: 110,
              ),
              onPressed: () {
                setState(() {
                  isSoundOn = !isSoundOn; // 소리 상태를 토글
                  // 여기에 소리 켜기/끄기 로직을 추가할 수 있습니다.
                });
              },
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
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0), // 왼쪽 패딩 추가
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 텍스트 왼쪽 정렬
          children: [
            const SizedBox(height: 300), // 원하는 여백을 설정
            Text(
              '★ RANK 1. ${widget.db.name} ${widget.db.gochiScore} ${widget.db.calScore}',
              style: TextStyle(
                fontSize: 60,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.black,
              ),
            ),
            const SizedBox(height: 80), // 원하는 여백을 설정
            Text(
              '★ RANK 2. ${widget.db.name} ${widget.db.gochiScore} ${widget.db.calScore}',
              style: TextStyle(
                fontSize: 60,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.black,
              ),
            ),
            const SizedBox(height: 80), // 원하는 여백을 설정
            Text(
              '★ RANK 3. ${widget.db.name} ${widget.db.gochiScore} ${widget.db.calScore}',
              style: TextStyle(
                fontSize: 60,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.black,
              ),
            ),
            const SizedBox(height: 80), // 원하는 여백을 설정
            Text(
              '★ RANK 4. ${widget.db.name} ${widget.db.gochiScore} ${widget.db.calScore}',
              style: TextStyle(
                fontSize: 60,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.black,
              ),
            ),
            const SizedBox(height: 80), // 원하는 여백을 설정
            Text(
              '★ RANK 5. ${widget.db.name} ${widget.db.gochiScore} ${widget.db.calScore}',
              style: TextStyle(
                fontSize: 60,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
