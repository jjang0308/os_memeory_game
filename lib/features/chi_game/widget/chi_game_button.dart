import 'package:flutter/material.dart';

class ChiGameButton extends StatefulWidget {
  final String imageName;
  final Function(String) onFoodSelected;

  final bool isSelected;
  final Color boxColor;
  const ChiGameButton({
    Key? key,
    required this.imageName,
    required this.onFoodSelected,
    required this.isSelected,
    required this.boxColor,
  }) : super(key: key);

  @override
  State<ChiGameButton> createState() => _ChiGameButtonState();
}

class _ChiGameButtonState extends State<ChiGameButton> {
  String selectedImage = ''; // 추가: 선택한 이미지 저장 변수

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () => widget.onFoodSelected(widget.imageName),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.boxColor,
              border: Border.all(
                  color: const Color.fromARGB(255, 246, 236, 225), width: 10),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: Colors.grey,
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/foods/${widget.imageName}',
                  width: 110,
                ),
                const SizedBox(width: 20), // 이미지와 텍스트 사이 간격 조정
              ],
            ),
          ),
        ));
  }
}
