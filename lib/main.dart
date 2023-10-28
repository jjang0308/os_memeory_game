import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/features/chi_game/chigame_screen.dart';
import 'package:os_memory_game/features/home/home_screen.dart';

void main() {
  // 네이티브 코드를 사용하는 경우, 플랫폼간의 통신을 함->비동기적이벤트를 사용하는 경우 사용
  WidgetsFlutterBinding.ensureInitialized;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final FlexScheme usedScheme = FlexScheme.gold;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ChiGameScreen(),
      theme: FlexThemeData.light(scheme: usedScheme),
    );
  }
}
