import 'dart:math';
import 'package:flutter/material.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
import 'package:os_memory_game/main.dart';

class CarculatorGameScreen extends StatefulWidget {
  const CarculatorGameScreen({super.key});

  @override
  State<CarculatorGameScreen> createState() => CarculatorGameScreenState();
}

class CarculatorGameScreenState extends State<CarculatorGameScreen> {
  int calcul = 0;
  int price = 0;

  List<Widget> buttons = [];

  @override
  void initState() {
    super.initState();

    buttons = [
      createButton('$globalPrice원'),
      createButton('${globalPrice + 500}원'),
      createButton('${globalPrice + 2000}원'),
      createButton('${globalPrice + 2030}원'),
    ];

    buttons.shuffle(Random());
  }

  Widget createButton(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 300),
      child: ElevatedButton(
        onPressed: () {
          // 버튼을 눌렀을 때 수행할 작업을 여기에 추가
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          minimumSize: const Size(600, 200),
          padding: const EdgeInsets.symmetric(vertical:  80 ,) ,
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
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        appBar: AppBar(
          elevation: 2,
          backgroundColor:  Theme.of(context).colorScheme.errorContainer,
          foregroundColor: Colors.black,
          title: const Text( 
            '깜짝게임 : 방금 주문한 꼬치의 가격을 맞춰봐~!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,),
          ),
        ),
        body: ListView(  // Column 대신 ListView를 사용
          children: [
            const SizedBox(
              height: 100,
            ),
            ...buttons,
          ],
        )
    );
  }
}