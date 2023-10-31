import 'package:flutter/material.dart';
import 'dart:math';

class RandomOrderScreen extends StatefulWidget {
  const RandomOrderScreen({Key? key}) : super(key: key);

  @override
  State<RandomOrderScreen> createState() => _RandomOrderScreenState();
}

class _RandomOrderScreenState extends State<RandomOrderScreen> {
  final List<String> allImageUrls = [
    'assets/fonts/images/ehwkd.png',
    'assets/fonts/images/pimang.png',
    'assets/fonts/images/RHcl.png',
    'assets/fonts/images/steak.png',
    'assets/fonts/images/ehwkd.png',
    'assets/fonts/images/pimang.png',
    'assets/fonts/images/RHcl.png',
    'assets/fonts/images/steak.png',
    'assets/fonts/images/ehwkd.png',
    'assets/fonts/images/pimang.png',
  ];

  List<String> selectedImages = [];

  void selectRandomImages() {
    final random = Random();
    selectedImages.clear(); // 이미 선택된 이미지 목록 초기화

    while (selectedImages.length < 4) {
      final randomIndex = random.nextInt(allImageUrls.length);
      final selectedImage = allImageUrls[randomIndex];
      if (!selectedImages.contains(selectedImage)) {
        selectedImages.add(selectedImage);
      }
    }

    // 화면을 다시 그리도록 setState 호출
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    selectRandomImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('랜덤 주문 화면'),
      ),
      body: Row(
        children: selectedImages.map((image) {
          return Container(
            padding: const EdgeInsets.all(8.0), // 이미지 사이의 간격을 조절
            child: Image.asset(
              image,
              width: 100, // 이미지의 가로 크기
              height: 100, // 이미지의 세로 크기
              fit: BoxFit.cover, // 이미지를 Container에 맞게 확장
            ),
          );
        }).toList(),
      ),
    );
  }
}
