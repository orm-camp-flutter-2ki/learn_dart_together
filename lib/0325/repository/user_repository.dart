import 'package:learn_dart_together/0325/model/user_model.dart';

abstract interface class UserRepository {
  // 웹 서버에서 데이터를 가져오는 메서드
  Future<List<User>> getUsers();

  // 특정 id에 해당하는 데이터를 가져오는 메서드
  Future<List<User>> getUser(int id);

  // userName으로 오름차 정렬 후, 상위 10개만 출력하는 메서드
  Future<List<User>> getUserTop10ByUserName();
}
