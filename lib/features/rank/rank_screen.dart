import 'package:flutter/material.dart';
import 'package:os_memory_game/database/game_db_query.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/model/game_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<GameModel> ranks = [];

class RankScreen extends StatefulWidget {
  const RankScreen({Key? key}) : super(key: key);

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class Rank {
  final String name;
  final int gochiScore;
  final int calScore;

  Rank({
    required this.name,
    required this.gochiScore,
    required this.calScore,
  });
}

class _RankScreenState extends State<RankScreen> {
  bool isSoundOn = true; // 소리 상태 (켜짐: true, 꺼짐: false)
  // Firestore 변수로 가져오기
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  //fireDBQuery파일에서 사용할 함수를 위한 변수 선언
  FireDBQuery fireDBQuery = FireDBQuery();

  @override
  void initState() {
    super.initState();
    // 데이터베이스에서 랭킹 데이터를 불러오는 부분

    fireDBQuery.getFirebaseData(ranks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
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
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 100, vertical: 8.0), // 왼쪽 패딩 추가

        child: ListView.builder(
          itemCount: ranks.length,
          itemBuilder: (context, index) {
            final gameModel = ranks[index]; // 랭킹 데이터에 해당하는 GameModel 객체 가져오기
            final Rank = index + 1; // 랭킹 순서
            return Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Rank$Rank Name: ${gameModel.name}, gochiScore: ${gameModel.gochiScore + gameModel.calScore}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            );
          },
        ),
      ),
    );
  }
}
