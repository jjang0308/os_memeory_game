import 'package:flutter/material.dart';

class RankWidget extends StatelessWidget {
  final String text;
  final String score;

  const RankWidget(this.text, this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 300),
              Text(
                '$text $score',
                style: TextStyle(
                  fontSize: 60,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.black,
                ),
              ),
            ],
          );
        });
  }
}
