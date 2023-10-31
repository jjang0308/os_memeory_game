import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

// // void main() => runApp(const ChiGameMotion());

class ChiGameMotion extends StatefulWidget {
  final bool isSelected;
  final double positionLeft;
  final double positionTop;
  final String imageName;
  const ChiGameMotion(
      {super.key,
      required this.isSelected,
      required this.positionLeft,
      required this.positionTop,
      required this.imageName});

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
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/fonts/images/${widget.imageName}'),
        ),
      ),
    );
  }
}

@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  throw UnimplementedError();
}
