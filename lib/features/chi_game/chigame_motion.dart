<<<<<<< HEAD
// // import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
=======
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
>>>>>>> f7bf2b591f75fb4582fad9c96622d32e37b44b55

// // void main() => runApp(const ChiGameMotion());

<<<<<<< HEAD
// class ChiGameMotion extends StatefulWidget {
//   final bool isSelected;
//   final double positionLeft;
//   final double positionTop;
//   const ChiGameMotion(
//       {super.key,
//       required this.isSelected,
//       required this.positionLeft,
//       required this.positionTop});
=======
class ChiGameMotion extends StatefulWidget {
    final bool isSelected;
    final double positionLeft;
    final double positionTop;
    final String imageName;
  const ChiGameMotion({super.key, required this.isSelected, required this.positionLeft, required this.positionTop, required this.imageName});
>>>>>>> f7bf2b591f75fb4582fad9c96622d32e37b44b55

//   @override
//   State<ChiGameMotion> createState() => _ChiGameMotionState();
// }

<<<<<<< HEAD
// class _ChiGameMotionState extends State<ChiGameMotion> {
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: widget.positionTop,
//       left: widget.positionLeft,
//       child: FadeInDown(
//         from: 100,
//         child: SizedBox(
//           height: 200,
//           width: 200,
//           child: Image.asset('assets/fonts/images/pimang.png'),
//         ),
//       ),
//     );
//   }
// }
=======
class _ChiGameMotionState extends State<ChiGameMotion> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.positionTop,
      left: widget.positionLeft,
      child: FadeInDown( duration: const Duration(milliseconds: 800) , animate: true,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/fonts/images/${widget.imageName}'),
        ),
      ),
    );
  }
}
>>>>>>> f7bf2b591f75fb4582fad9c96622d32e37b44b55
