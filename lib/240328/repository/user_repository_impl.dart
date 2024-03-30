import 'package:learn_dart_together/240328/model/user.dart';
import 'package:learn_dart_together/240328/repository/user_repository.dart';

import '../data_source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  final _api = UserApi();

  // UserRepositoryImpl({UserApi? api}) : _api = api ?? UserApi();

  @override
  Future<List<User>> getUsers() async {
    try {
      final userList = await _api.getUsers();

      return userList;
    } catch (e) {
      print(e);
      // 에러 발생 시 빈 리스트 반환
      return [];
    }
  }
}
