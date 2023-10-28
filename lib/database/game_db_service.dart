import 'package:os_memory_game/model/game_model.dart';

import 'game_db_query.dart';

class GameInfoDBService {
  ///GameDBQuery을 이용하여 db에서 값을 가져옴
  static Future<List<GameModel>> getGameInfo() {
    return GameDBQuery.getModelListDB();
  }

  static void insertGameInfo(GameModel gameModel) {
    GameDBQuery.insertModelListDB(gameModel);
  }
}
