import 'package:collection/collection.dart';
import 'package:learn_dart_together/240325/dart_source/user_api.dart';
import 'package:learn_dart_together/240325/model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();

  Future<User> getUser(int id);
}

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<User> getUser(int id) {
    return _api.getUser(id);
  }

  @override
  Future<List<User>> getUsers() {
    return _api.getUsers();
  }

  Future<List<String>> getUserTopByUserName() async {
    final users = await getUsers();
    final userSearch = users
        .sorted((a, b) => a.name.compareTo(b.name))
        .take(10)
        .map((e) => e.name)
        .toList();
    return userSearch;
  }
}
