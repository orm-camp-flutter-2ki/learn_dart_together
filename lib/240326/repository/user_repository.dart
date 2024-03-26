import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/model/user.dart';

import '../data_source/user_api.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();

  Future<List<User>> getUsersTop10ByUserName();
}

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    List<User> data = await _api.getUsers();
    return data;
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    List<User> data = await _api.getUsers();
    List<User> dataSort = data.sortedBy((e) => e.username);
    return dataSort.where((e) => e.id <= 10).toList();
  }
}

void main() async {
  List<User> userList = await UserRepositoryImpl().getUsers();
  List<User> userList10 = await UserRepositoryImpl().getUsersTop10ByUserName();
  // print(userList);
  print(userList10);
}
