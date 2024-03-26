import 'package:collection/collection.dart';

import 'package:learn_dart_together/240325/user.dart';

import 'package:learn_dart_together/240326/repository/userRepository.dart';

import '../../240325/data_source/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getUsers() async {
    UserApi userApi = UserApi();
    return userApi.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    UserApi userApi = UserApi();
    final List<User> users = await userApi.getUsers();
    List<User> usersTop10ByUserName =
        users.sorted((a, b) => a.username.compareTo(b.username)).sublist(0, 10);
    return usersTop10ByUserName;
  }
}
