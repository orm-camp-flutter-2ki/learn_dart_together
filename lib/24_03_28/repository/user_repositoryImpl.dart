import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repository.dart';

import '../data_source/user_api.dart';
import '../model/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _client;

  UserRepositoryImpl({UserApi? client}) : _client = client ?? UserApi();

  @override
  Future<List<User>> getUsers() async {
    List<UserDto> users;
    List<User> userList = [];
    try {
      users = await _client.getUser();
      userList = users.map((dto) => dto.toUser()).toList();
    } catch (e) {
      userList = [];
    }
    return userList;
  }
}
