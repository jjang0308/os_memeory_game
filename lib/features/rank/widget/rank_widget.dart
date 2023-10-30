import 'package:flutter/material.dart';

class RankWidget extends StatelessWidget {
  final String text;
  final int gochiScore;
  final int calScore;
//update
  const RankWidget(this.text, this.gochiScore, this.calScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 300),
        Text(
          '$text $gochiScore $calScore',
          style: TextStyle(
            fontSize: 60,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 5
              ..color = Colors.black,
          ),
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
