import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:os_memory_game/features/ranking_game/rank_screen.dart';

void main() {
  // dbConnector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final FlexScheme usedScheme = FlexScheme.gold;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RankScreen(),
      theme: FlexThemeData.light(scheme: usedScheme),
    );
  }
}
