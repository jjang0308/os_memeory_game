import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:os_memory_game/model/game_model.dart';

class FireDBQuery {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
//파이어베이스에서 데이터를 가져와주는 함수
  Future<void> getFirebaseData(List<GameModel> ranks) async {
    try {
      QuerySnapshot querySnapshot = await firestore
          .collection('gochiGame')
          .orderBy('gochiScore', descending: true)
          .orderBy('calScore', descending: true)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        ranks.clear();
        ranks.addAll(querySnapshot.docs.map((doc) {
          var data = doc.data() as Map<String, dynamic>;
          return GameModel(
            name: data['name'],
            gochiScore: data['gochiScore'],
            calScore: data['calScore'],
          );
        }).toList());
      }
    } catch (e) {
      print('데이터 가져오기 중 오류 발생: $e');
    }
  }

//데이터를 파이어베이스에 추가해주는 함수
  Future<void> addData(GameModel rank) async {
    try {
      await firestore.collection('gochiGame').add(rank.toMap());
    } catch (e) {
      print('오류 발생: $e');
    }
  }

  // 다음 함수를 사용하여 Firestore의 'gochiGame' 컬렉션 내의 모든 문서를 삭제할 수 있습니다.
  Future<void> clearGameData() async {
    try {
      QuerySnapshot querySnapshot =
          await firestore.collection('gochiGame').get();
      for (QueryDocumentSnapshot document in querySnapshot.docs) {
        await document.reference.delete();
      }
    } catch (e) {
      print('데이터 삭제 중 오류 발생: $e');
    }
  }

  Future<void> deleteFirstData() async {
    try {
      QuerySnapshot querySnapshot = await firestore
          .collection('gochiGame')
          .orderBy(FieldPath.documentId) // 문서 ID 순으로 정렬
          .limit(1) // 첫 번째 데이터만 가져오기
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // 데이터가 존재하면 첫 번째 데이터의 문서 ID를 가져옵니다.
        String firstDocumentId = querySnapshot.docs[0].id;

        // 해당 문서 ID를 사용하여 데이터 삭제
        await firestore.collection('gochiGame').doc(firstDocumentId).delete();
        print('첫 번째 데이터 삭제 완료');
      } else {
        print('데이터가 없어 삭제할 수 없습니다.');
      }
    } catch (e) {
      print('데이터 삭제 중 오류 발생: $e');
    }
  }
}
