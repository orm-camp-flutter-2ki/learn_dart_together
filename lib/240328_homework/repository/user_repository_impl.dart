import 'package:learn_dart_together/240328_homework/data_source/user_api.dart';
import 'package:learn_dart_together/240328_homework/dto/user_dto.dart';
import 'package:learn_dart_together/240328_homework/mapper/user_mapper.dart';
import 'package:learn_dart_together/240328_homework/model/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<List<User>> getUsers() async {
    final json = await _api.getUsers();
    final user = json.map((e) => UserDto.fromJson(e)).toList();
    return user.map((e) => e.toUser()).toList();
  }
}

abstract interface class UserRepository {
  Future<List<User>> getUsers();
}
