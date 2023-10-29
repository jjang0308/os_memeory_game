import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/game_model.dart';

class GameDBQuery {
  static late Database _database;
//get은 _database를 외부에서 사용할 수 있도록 하는 메소드임
  static Future<Database?> get database async {
    _database = await initDB();
    return _database;
  }

  static initDB() async {
    String path = join(await getDatabasesPath(), 'GameInfo');

    // Delete the database
    await deleteDatabase(path);

    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      //테이블 생성
      await db.execute(
          "CREATE TABLE GameInfo( name CHAR(10) NOT NULL, gochiScore INT NOT NULL, calScore INT NOT NULL)");
    }, onUpgrade: (db, oldVersion, newVersion) {});
  }

//DB에 삽입해줌
  static void insertModelListDB(GameModel gameInfo) async {
    final db = await database;

    await db!.insert(
      'GameInfo',
      gameInfo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

// 모델을 리스트로 바꿔주고 거기에 DB값을 저장
  static Future<List<GameModel>> getModelListDB() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('GameInfo');

    return List.generate(maps.length, (index) {
      return GameModel(
        name: maps[index]["name"],
        gochiScore: maps[index]["gochiScore"],
        calScore: maps[index]["calScore"],
      );
    });
  }
}
