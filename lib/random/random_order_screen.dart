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
      body: ListView.builder(
        itemCount: selectedImages.length,
        itemBuilder: (context, index) {
          // 각 이미지를 표시하는 ListTile 반환
          return ListTile(
            title: Image.asset(
              selectedImages[index],
              fit: BoxFit.contain, // 이미지를 화면에 맞게 조절
            ),
            // ListTile을 누를 때 수행할 동작을 추가할 수 있습니다.
            onTap: () {
              // 이미지를 눌렀을 때 수행할 동작을 여기에 추가
            },
          );
        },
      ),
    );
  }
}
