import 'dart:math';

import 'package:flutter/material.dart';

import 'package:os_memory_game/features/chi_game/chigame_screen.dart';

import '../chi_game/chigame_motion.dart';

List<Map<String, dynamic>> buttonImages = [
  {
    'index': 0,
    'imageName': 'eggplant.png',
    'text': 'Left Button 1',
    'boxColor': const Color(0xFF60305F)
  },
  {
    'index': 1,
    'imageName': 'meat.png',
    'text': 'Left Button 2',
    'boxColor': const Color(0xFFCB4144)
  },
  {
    'index': 2,
    'imageName': 'tomato.png',
    'text': 'Left Button 3',
    'boxColor': const Color(0xFFEC4A4A)
  },
  {
    'index': 3,
    'imageName': 'potato.png',
    'text': 'Left Button 4',
    'boxColor': const Color(0xffC49C4A)
  },
  {
    'index': 4,
    'imageName': 'shrimp.png',
    'text': 'Left Button 5',
    'boxColor': const Color(0xffFC5428)
  },
  {
    'index': 5,
    'imageName': 'bacon.png',
    'text': 'Left Button 1',
    'boxColor': const Color(0xffD85849)
  },
  {
    'index': 6,
    'imageName': 'broccoli.png',
    'text': 'Left Button 2',
    'boxColor': const Color(0xff8BA442)
  },
  {
    'index': 7,
    'imageName': 'carrot.png',
    'text': 'Left Button 3',
    'boxColor': const Color(0xffEE771B)
  },
  {
    'index': 8,
    'imageName': 'cheese.png',
    'text': 'Left Button 4',
    'boxColor': const Color(0xffF7BA00)
  },
  {
    'index': 9,
    'imageName': 'corn.png',
    'text': 'Left Button 5',
    'boxColor': const Color(0xffFEDF49)
  },
];

class RandomOrderScreen extends StatefulWidget {
  const RandomOrderScreen({Key? key}) : super(key: key);

  @override
  State<RandomOrderScreen> createState() => _RandomOrderScreenState();
}

class _RandomOrderScreenState extends State<RandomOrderScreen> {
  final List<String> allImageUrls = [];

  List<String> selectedImages = [];

  // void selectRandomImages() {
  //   final random = Random();
  //   selectedImages.clear();

  //   while (selectedImages.length < 4) {
  //     final randomIndex = random.nextInt(allImageUrls.length);
  //     final selectedImage = allImageUrls[randomIndex];
  //     if (!selectedImages.contains(selectedImage)) {
  //       selectedImages.add(selectedImage);
  //     }
  //   }

  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   selectRandomImages();
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    List<int> chiList = [];
    int chiNum = Random().nextInt(5) + 1;
    for (int i = 0; i < chiNum; i++) {
      int chiIndex = Random().nextInt(10);
      chiList.add(chiIndex);
    }
    print(chiList);

    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      // appBar: PreferredSize(
      //   preferredSize:
      //       const Size.fromHeight(100.0), // Adjust the height as needed
      //   child: AppBar(
      //     backgroundColor: Colors.white,
      //     title: const Text(
      //       '랜덤 주문 화면',
      //       style: TextStyle(fontSize: 50, color: Color(0xFF090909)),
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.06,
            left: screenWidth * 0.05,
            child: Text(
              "!주문이 들어왔어요!",
              style: TextStyle(
                fontFamily: "Maple-Bold",
                fontSize: screenWidth * 0.12,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 30
                  ..color = Colors.white,
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.06,
            left: screenWidth * 0.05,
            child: Text(
              "!주문이 들어왔어요!",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: screenWidth * 0.12),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: selectedImages.map((image) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    image,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
          ),
          Positioned(
            // top: ,
            right: 530,
            child: Container(
              width: 10,
              height: screenHeight * 0.7,
              color: Colors.brown,
              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.25),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChiGameScreen(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ),
          for (int i = 0; i < chiNum; i++)
            ChiGameMotion(
              isSelected: true,
              positionLeft: 470, // 꼬치에 꽂힌 이미지 간격 조절
              positionTop: 1050 - (i * 150),
              imageName: buttonImages[chiList[i]]['imageName'],
            ),
        ],
      ),
    );
  }
}
