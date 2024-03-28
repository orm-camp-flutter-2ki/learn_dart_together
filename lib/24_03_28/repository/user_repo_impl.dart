import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<List<User>> getUsers() async {
    final userList = await _api.getUsers();

    return userList.map((dto) => dto.toUser()).toList();
  }
}
