// import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

// void main() => runApp(const ChiGameMotion());

class ChiGameMotion extends StatefulWidget {
<<<<<<< HEAD
  final bool isSelected;
  final double positionLeft;
  final double positionTop;
  const ChiGameMotion(
      {super.key,
      required this.isSelected,
      required this.positionLeft,
      required this.positionTop});
=======
    final bool isSelected;
    final double positionLeft;
    final double positionTop;
    final String imageName;
  const ChiGameMotion({super.key, required this.isSelected, required this.positionLeft, required this.positionTop, required this.imageName});
>>>>>>> b2c70f3b18ee251296beaed89ac3e6475b9b05dc

  @override
  State<ChiGameMotion> createState() => _ChiGameMotionState();
}

class _ChiGameMotionState extends State<ChiGameMotion> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.positionTop,
      left: widget.positionLeft,
<<<<<<< HEAD
      child: FadeInDown(
        from: 100,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/fonts/images/pimang.png'),
=======
      child: FadeInDown( duration: const Duration(milliseconds: 800) , animate: true,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/fonts/images/${widget.imageName}'),
>>>>>>> b2c70f3b18ee251296beaed89ac3e6475b9b05dc
        ),
      ),
    );
  }
}
