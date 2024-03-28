import 'package:collection/collection.dart';
import 'package:learn_dart_together/240325_homework/model/user.dart';
import 'package:learn_dart_together/240325_homework/user_api.dart';

void main() async {
  final repo1 = await TodoRepositoryImpl().getTodos();
  final repo2 = await TodoRepositoryImpl().getUsersTop10ByUserName();
}

class TodoRepositoryImpl implements TodoRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getTodos() => _api.getUsers();

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    List<User> data = await _api.getUsers();
    return data.sorted((a, b) => a.username.compareTo(b.username)).toList();
  }
}

abstract interface class TodoRepository {
  Future<List<User>> getTodos();

  Future<List<User>> getUsersTop10ByUserName();
}
