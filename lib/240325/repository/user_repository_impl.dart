


import 'package:untitled2/240325/data_source/user_api.dart';

import '../model/user.dart';
import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {

  @override
  Future<List<User>> getUsers() async {
    UserApi userApi = UserApi();
    return userApi.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    UserApi userApi = UserApi();
    final List<User> users = await
        userApi.getUsers();
    List<User> topUserName =
        users.sublist(0, 10);
    return topUserName;

  }
}