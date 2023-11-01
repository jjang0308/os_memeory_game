import 'package:flutter/material.dart';

class ChiGameButton extends StatefulWidget {
  final String imageName;
  final Function(String) onFoodSelected;

  final bool isSelected;
  const ChiGameButton({
    Key? key,
    required this.imageName,
    required this.onFoodSelected,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<ChiGameButton> createState() => _ChiGameButtonState();
}

class _ChiGameButtonState extends State<ChiGameButton> {
  String selectedImage = ''; // 추가: 선택한 이미지 저장 변수

  @override
  Widget build(BuildContext context) {
    return Column(
      // Column으로 변경
      children: [
        GestureDetector(
          onTap: () => widget.onFoodSelected(widget.imageName),
          child: Container(
            width: 220,
            height: 200,
            color: const Color(0xFFF2C18C),
            child: Row(
              children: [
                Image.asset('assets/images/foods/${widget.imageName}'),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
