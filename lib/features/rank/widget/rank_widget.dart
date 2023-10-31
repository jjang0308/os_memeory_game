import 'package:flutter/material.dart';

class RankWidget extends StatelessWidget {
  final String name;
  final int gochiScore;
  final int calScore;
//update
  const RankWidget(this.name, this.gochiScore, this.calScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 300),
        Text(
          '$name $gochiScore $calScore',
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
