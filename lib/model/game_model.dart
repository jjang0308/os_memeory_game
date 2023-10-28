class GameModel {
  final String name;
  final int gochiScore;
  final int calScore;

  GameModel({
    required this.name,
    required this.gochiScore,
    required this.calScore,
  });

  //toMap()은 Spec을 map 타입으로 변환주는 함수
  // DB에 실제로 insert할 땐 map 타입이어야 함.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'gochiScore': gochiScore,
      'calScore': calScore,
    };
  }
}
