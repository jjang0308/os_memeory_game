import 'package:flutter/material.dart';
import 'package:os_memory_game/features/Home/homescreen.dart';
import 'package:os_memory_game/features/chi_game/chigame_screen.dart';

void main() {
  // dbConnector();
  runApp(const MyApp());
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
