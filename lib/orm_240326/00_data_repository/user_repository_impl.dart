import 'package:collection/collection.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/user_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/user_api.dart';

import '../model/user.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    final result = await _api.getUsers();
    return result;
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final results = await _api.getUsersTop10ByUserName();
    return results
        .sorted((user, nextUser) => user.username.compareTo(nextUser.username));
  }
}
