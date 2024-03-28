import 'package:http/testing.dart';
import 'package:learn_dart_together/240328/mapper/user_maper.dart';

import '../data_source/user_api.dart';import '../model/user.dart';

class UserRepository {
  final UserApi _api;

  UserRepository(MockClient mockClient) : _api = UserApi(client: mockClient);

  Future<List<User>> getUser() async {
    final userList = await _api.getUser();
    final users = userList.map((e) => e.toUser()).toList();
    return users;
  }
}
