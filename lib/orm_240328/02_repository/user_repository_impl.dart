import 'package:learn_dart_together/orm_240328/02_data_source/user_api.dart';
import 'package:learn_dart_together/orm_240328/02_dto/user_dto.dart';
import 'package:learn_dart_together/orm_240328/02_mapper/user_mapper.dart';
import 'package:learn_dart_together/orm_240328/02_repository/user_repository.dart';

import '../02_model/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<List<User>> getUser() async {
    List<UserDto> user;
    List<User> userList = [];
    try {
      user = await _api.getUser();
      userList = user
          .where((e) =>
              e.name != '' || e.email != '' || e.lat != '' || e.lng != '')
          .map((dto) => dto.toUser())
          .toList();
    } catch (e) {
      final users = [];
    }
    return userList;
  }
}
