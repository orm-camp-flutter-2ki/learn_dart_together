import 'package:learn_dart_together/24_03_28/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repository.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl(UserApi? api) : _api = api ?? UserApi();

  @override
  Future<List<User>> getUsers() async {
    final users = await _api.getUsers();

    return users.map((e) => e.toUser()).toList();
  }
}

main() async {
  final users = await UserRepositoryImpl(UserApi()).getUsers();
  users.forEach(print);
}
