import 'package:learn_dart_together/240328/model/user/user.dart';
import 'package:learn_dart_together/240328/data_source/user_api.dart';
import 'package:learn_dart_together/240328/mapper/user/user_mapper.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
}

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl({UserApi? api}) : _api = api ?? UserApi();

  @override
  Future<List<User>> getUsers() async {
    try {
      final userDtoList = await _api.getUsers();

      return userDtoList.map((e) => e.toUser()).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}