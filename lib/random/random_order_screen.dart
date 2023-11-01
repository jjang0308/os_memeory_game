import 'package:flutter/material.dart';
import 'dart:math';

import 'package:os_memory_game/features/chi_game/chigame_screen.dart';

class RandomOrderScreen extends StatefulWidget {
  const RandomOrderScreen({Key? key}) : super(key: key);

  @override
  State<RandomOrderScreen> createState() => _RandomOrderScreenState();
}

class _RandomOrderScreenState extends State<RandomOrderScreen> {
  final List<String> allImageUrls = [
  
    'assets/images/pimang.png',
    'assets/images/RHcl.png',
    'assets/images/foods/bacon.png',
    'assets/images/ehwkd.png',
    'assets/images/foods/cheese.png',
    'assets/images/RHcl.png',
    'assets/images/steak.png',
    'assets/images/ehwkd.png',
    'assets/images/pimang.png',
  ];

  List<String> selectedImages = [];

  void selectRandomImages() {
    final random = Random();
    selectedImages.clear();

    while (selectedImages.length < 4) {
      final randomIndex = random.nextInt(allImageUrls.length);
      final selectedImage = allImageUrls[randomIndex];
      if (!selectedImages.contains(selectedImage)) {
        selectedImages.add(selectedImage);
      }
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    selectRandomImages();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF0E1D0),
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(100.0), // Adjust the height as needed
        child: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            '랜덤 주문 화면',
            style: TextStyle(fontSize: 50, color: Color(0xFF090909)),
          ),
        ),
      ),
      body: Stack(
        children: [
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
            top: -300,
            right: 530,
            child: Container(
              width: 10,
              height: screenHeight * 0.8,
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
                    builder: (context) =>  const ChiGameScreen(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
