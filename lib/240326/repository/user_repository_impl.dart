import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/data_source/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';

import '../model/user_api.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getUsers() async {
    UserApi userapi = UserApi();
    final userlist = await userapi.getUsers();
    return userlist;
  }

  @override
  Future<List<User>> getUsersTop10ByName() async {
    UserApi userapi = UserApi();
    final userlist = await userapi.getUsers();
    List<User> top10 =
        userlist.sorted((a, b) => a.name.compareTo(b.name)).sublist(0, 10);
    return top10;
  }
}
