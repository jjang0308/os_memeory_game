import 'package:flutter/material.dart';

class ArgumentScreen extends StatefulWidget {
  const ArgumentScreen({super.key});

  @override
  State<ArgumentScreen> createState() => _ArgumentScreenState();
}

class _ArgumentScreenState extends State<ArgumentScreen> {
  String name = ''; // 사용자 입력을 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E1D0),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            const Text(
              '00네',
              style: TextStyle(fontSize: 80),
            ),
            const Text(
              '꼬치꼬치',
              style: TextStyle(fontSize: 80),
            ),
            Align(
              alignment: const Alignment(0.0, 0.8), // Y 축 방향으로 조절
              child: Container(
                width: 1100,
                height: 1100,
                color: const Color(0x1F000000),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(20.0), // 패딩 적용
                      child: Text(
                        '가게 인수증',
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Text(
                      '$name 님을(를) 꼬치꼬치 사장님으로 임명합니다.',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          name = value; // 사용자 입력을 변수에 저장
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: '이름을 입력하세요',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                      ),
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    const Text('1. 쟤료들을 선택해 알맞게 꽂으세요',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 80),
                    const Text('2. 중간중간에 꼬치 가격을 물어볼거에요',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 80),
                    const Text('3.  게임이 끝나면 점수가 나옵니다!!',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 200),
                    const Text('=> 앞으로도 좋은 매출을 위해 맛있는 꼬치를 만들어 주세요!!',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
