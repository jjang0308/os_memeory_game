import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

// // void main() => runApp(const ChiGameMotion());

class ChiGameMotion extends StatefulWidget {
  final bool isSelected;
  final double positionLeft;
  final double positionTop;
  final String imageName;
  final Color boxColor;

  const ChiGameMotion({
    super.key,
    required this.isSelected,
    required this.positionLeft,
    required this.positionTop,
    required this.imageName,
    required this.boxColor,
  });

  @override
  State<ChiGameMotion> createState() => _ChiGameMotionState();
}

class _ChiGameMotionState extends State<ChiGameMotion> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.positionTop,
      left: widget.positionLeft,
      child: FadeInDown(
        duration: const Duration(milliseconds: 800),
        animate: true,
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: widget.boxColor,
            // border: Border.all(
            //     color: const Color.fromARGB(255, 246, 236, 225), width: 10),
            // boxShadow: const <BoxShadow>[
            //   BoxShadow(
            //     offset: Offset(0, 5),
            //     blurRadius: 10,
            //     color: Colors.grey,
            //   ),
            // ],
          ),
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/foods/${widget.imageName}',
          ),
        ),
      ),
    );
  }
}
