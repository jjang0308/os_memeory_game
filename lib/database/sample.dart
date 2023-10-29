import 'dart:async';

import 'package:os_memory_game/model/game_model.dart';

import 'game_db_service.dart';

class Sample {
  List<GameModel> gameModelList = [];
  List<String> name = [];

  ///DB 샘플 만들어서 insert하고, DB에서 데이터 불러와서 Model List 반환
  Future<List<GameModel>> makeSample() {
    //모델 생성
    gameModelList.add(
      GameModel(
        name: "박찬우",
        gochiScore: 100,
        calScore: 100,
      ),
    );
    gameModelList.add(
      GameModel(
        name: "최지희",
        gochiScore: 84,
        calScore: 39,
      ),
    );
    gameModelList.add(
      GameModel(
        name: "박찬뚱",
        gochiScore: 76,
        calScore: 25,
      ),
    );
    gameModelList.add(
      GameModel(
        name: "최지뚠",
        gochiScore: 120,
        calScore: 125,
      ),
    );
    for (int i = 0; i < gameModelList.length; i++) {
      GameInfoDBService.insertGameInfo(gameModelList[i]);
    }
    // print("성공!!");
    // print(Sample().makeSample());
    // print(GameDBQuery.getModelListDB().toString());
    return GameInfoDBService.getGameInfo();
  }
}
