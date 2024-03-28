import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

abstract interface class UserApi {
  Future<List<UserDto>> getUsers();
}
