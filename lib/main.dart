import 'package:flutter/material.dart';
import 'package:os_memory_game/features/calculator_game/calculator_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarculatorGameScreen(),
    );
  }
}
