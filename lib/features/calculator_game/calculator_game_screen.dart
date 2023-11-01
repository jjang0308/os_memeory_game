import 'dart:math';
import 'package:flutter/material.dart';
import 'package:os_memory_game/features/chi_game/chigame_screen.dart';
import 'package:os_memory_game/features/chi_game/last_screen.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/features/orders/random_order_screen.dart';

import 'package:os_memory_game/main.dart';

class CarculatorGameScreen extends StatefulWidget {
  const CarculatorGameScreen({super.key});

  @override
  State<CarculatorGameScreen> createState() => CarculatorGameScreenState();
}

class CarculatorGameScreenState extends State<CarculatorGameScreen> {
  int calcul = 0;
  

  List<Widget> buttons = [];

  @override
  void initState() {
    super.initState();

    buttons = [
      createButton('${globalPrice+500}원'),
      createButton('$globalPrice원'),
      createButton('${globalPrice + 1000}원'),
      createButton('${globalPrice + 300}원'),
    ];

    buttons.shuffle(Random());
  }

 Widget createButton(String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 20), 
    child: ElevatedButton(
      onPressed: () {
        // 라벨 텍스트와 globalPrice를 비교
        if (label == '$globalPrice원') {
          // 일치하는 경우 globalPrice 값을 변경하고 RandomOrderScreen으로 이동
          globalPrice = getRandomPrice(); // 예시로 0 ~ 999 사이의 랜덤 값
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RandomOrderScreen(),
            ),
          );
        } else {
          // 일치하지 않는 경우 LastScreen으로 이동
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LastScreen(),
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        minimumSize: const Size(600, 200),
        padding: const EdgeInsets.symmetric(vertical: 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 70,
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: AppBar(
          elevation: 2,
          backgroundColor:  Theme.of(context).secondaryHeaderColor,
          foregroundColor: Colors.black,
          title: const Text( 
            '깜짝게임 : 방금 주문한 꼬치의 가격을 맞춰봐~!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,),
          ),
        ),
        body: ListView(  // Column 대신 ListView를 사용
          children: [
            const SizedBox(
              height: 150,
            ),
            ...buttons,
          ],
        )
    );
  }
}