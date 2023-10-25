// import 'package:mysql_client/mysql_client.dart';

// Future<void> dbConnector() async {
//   print("Connecting to mysql server...");
//   var port, host, userName, password;
//   // MySQL 접속 설정
//   final conn = await MySQLConnection.createConnection(
//     host: host,
//     port: port,
//     userName: userName,
//     password: password,
//     databaseName: 'testdb', // optional
//   );

//   // 연결 대기
//   await conn.connect();

//   print("Connected");

//   // 종료 대기
//   await conn.close();
// }
