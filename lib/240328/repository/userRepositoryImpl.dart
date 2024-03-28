import 'package:learn_dart_together/240328/dto/user_dto.dart';
import 'package:learn_dart_together/240328/mapper/user_mapper.dart';
import 'package:learn_dart_together/240328/model/user.dart';
import '../../240328/repository/userRepository.dart';
import '../data_source/user_api.dart';
import 'maskRepository.dart';

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
