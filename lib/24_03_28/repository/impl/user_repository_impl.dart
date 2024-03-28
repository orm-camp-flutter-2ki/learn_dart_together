import 'package:learn_dart_together/24_03_28/data_source/interface/user_api.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/repository/interface/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi;

  UserRepositoryImpl({required UserApi userApi}) : _userApi = userApi;

  @override
  Future<List<User>> getUsers() async {
    final userDtoList = await _userApi.getUsers();
    return userDtoList.map((userDto) => userDto.toUser()).toList();
  }
}
