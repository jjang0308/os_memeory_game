import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:os_memory_game/features/home/home_screen.dart';

void main() {
  // dbConnector();
  runApp(MyApp());
}

// Future<void> dbConnector() async {
//   print("mysql에 연결 중 입니다 ........");

//   // MySQL 접속 설정
//   final connection = MySQLConnection.createConnection(
//     host: 'your host name',
//     port: 1513,
//     userName: 'your user name',
//     password: 'your password',
//     databaseName: 'Ranking', // optional
//   );
//   //연결 대기
//   await connection.connect();

//   print("연결 되었습니다");
// //종료 대기
//   await connection.close();
// }

class MyApp extends StatelessWidget {
  FlexScheme usedScheme = FlexScheme.gold;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: FlexThemeData.light(scheme: usedScheme),
    );
  }
}
