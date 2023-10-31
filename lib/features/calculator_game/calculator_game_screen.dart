import 'dart:math';

import 'package:flutter/material.dart';

class CarculatorGameScreen extends StatefulWidget {
  const CarculatorGameScreen({super.key});

  @override
  State<CarculatorGameScreen> createState() => CarculatorGameScreenState();
}

class CarculatorGameScreenState extends State<CarculatorGameScreen> {
  int calcul = 0;
  int price = 0;

      Random rand = Random();
      //  int randomPrice= rand.nextInt(10000); // 이 부분에서 10000은 원하는 최대값을 의미합니다. 필요에 따라 변경하실 수 있습니다.
    

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
        body: Column(
          
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 300),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    calcul += 500;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(600, 200), // 가로와 세로 크기를 같게 설정
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '$price원',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150, // 버튼 사이의 간격 조절
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(600, 200), // 가로와 세로 크기를 같게 설정
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Container(
                  
                  child:  Text(            
                    '${price+500}원',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150, // 버튼 사이의 간격 조절
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: ElevatedButton(
                onPressed: () {
                 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(600, 200), // 가로와 세로 크기를 같게 설정
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Text(
                    '${price+2000}원',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150, // 버튼 사이의 간격 조절
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    calcul += 500;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(600, 200), // 가로와 세로 크기를 같게 설정
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    '${price+2030}원',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
