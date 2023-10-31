import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:os_memory_game/random/random_order_screen.dart';
=======
import 'package:os_memory_game/argument/argument_screen.dart';
import 'package:os_memory_game/features/home/home_screen.dart';
>>>>>>> f7bf2b591f75fb4582fad9c96622d32e37b44b55

void main() {
  // // 네이티브 코드를 사용하는 경우, 플랫폼간의 통신을 함->비동기적이벤트를 사용하는 경우 사용
  WidgetsFlutterBinding.ensureInitialized;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final FlexScheme usedScheme = FlexScheme.gold;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: FlexThemeData.light(
        scheme: usedScheme,
        textTheme: const TextTheme(
            titleLarge: TextStyle(fontFamily: "Maple-Bold"),
            titleSmall: TextStyle(fontFamily: "Maple-Regular")),
      ),
    );
  }
}
