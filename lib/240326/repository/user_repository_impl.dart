import 'package:collection/collection.dart';
import 'package:dart_cli_practice/240325/data_source/user_api.dart';
import 'package:dart_cli_practice/240325/practice/user.dart';
import 'package:dart_cli_practice/240326/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    return await api.getUsers();
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    final users = await api.getUsers();
    return users
        .sorted((a, b) => a.username.compareTo(b.username))
        .sublist(0, 10);
  }
}
