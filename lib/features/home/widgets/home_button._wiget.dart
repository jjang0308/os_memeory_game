import 'package:flutter/material.dart';

class HomeButtonWidget extends StatefulWidget {
  final Function onPressed;
  final String buttonName;
  const HomeButtonWidget(
      {super.key, required this.onPressed, required this.buttonName});

  @override
  State<HomeButtonWidget> createState() => _HomeButtonWidgetState();
}

class _HomeButtonWidgetState extends State<HomeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => widget.onPressed(),
      child: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.14,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background.withOpacity(0.45),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              width: 20),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Text(
          widget.buttonName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: screenWidth * 0.15,
            color: Theme.of(context).colorScheme.tertiaryContainer,
            fontFamily: "Maple-Bold",
            shadows: const <Shadow>[
              Shadow(
                offset: Offset(0, 3),
                blurRadius: 10,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
