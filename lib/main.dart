import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:os_memory_game/features/home/home_screen.dart';

String globalName = '';
void main() {
  runApp(const MyApp());
  // // 네이티브 코드를 사용하는 경우, 플랫폼간의 통신을 함->비동기적이벤트를 사용하는 경우 사용
  WidgetsFlutterBinding.ensureInitialized;
  Firebase.initializeApp(); // Firebase 초기화 굳이 초기화 시켜줘야 할 까 ?
  //print("하이하이");
}

//fdhh
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
