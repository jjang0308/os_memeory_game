import 'package:flutter/material.dart';

class CarculatorGameScreen extends StatefulWidget {
  const CarculatorGameScreen({super.key});

  @override
  State<CarculatorGameScreen> createState() => _CarculatorGameScreenState();
}

class _CarculatorGameScreenState extends State<CarculatorGameScreen> {
  int calcul = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text(
          '깜짝게임 : 가격을 맞춰봐~!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40), // 양쪽으로 10 픽셀씩 외부 패딩 주기
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    calcul += 500;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(200, 150),
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '고기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
