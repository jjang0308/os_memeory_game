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

  static Future<List<GameModel>> selectInfo() async {
    final Database db = _database;

    List<Map<String, dynamic>> data = await db.query(
      "GameInfo", //테이블 명
      orderBy: "score ASC", //오름차순으로 정렬
    );

    return List.generate(data.length, (index) {
      return GameModel(
        name: data[index]["name"],
        gochiScore: data[index]["gochiScore"],
        calScore: data[index]["calScore"],
      );
    });
  }

  static Future<void> clearData() async {
    final db = await database;
    await db!
        .delete('GameInfo'); // 'GameInfo'를 해당 데이터를 지우려는 테이블의 실제 이름으로 바꿔주세요.
  }
}
