import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_25/apis/user_api.dart';
import 'package:learn_dart_together/24_03_25/models/user.dart';
import 'package:learn_dart_together/24_03_26/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi;

  UserRepositoryImpl(this._userApi);

  @override
  Future<List<User>> getUsers() async {
    return await _userApi.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final users = await _userApi.getUsers();

    return users
        .sorted((a, b) => b.username.compareTo(a.username))
        .toList()
        .sublist(0, 10);
  }
}
