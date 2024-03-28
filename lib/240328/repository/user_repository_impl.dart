import 'package:learn_dart_together/240328/data_source/user_api.dart';
import 'package:learn_dart_together/240328/mapper/user_mapper.dart';
import 'package:learn_dart_together/240328/model/user.dart';
import 'package:learn_dart_together/240328/repository/user_repository.dart';

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
