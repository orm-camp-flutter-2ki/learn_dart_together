import 'package:learn_dart_together/24_04_02/dto/user_dto.dart';

import '../model/user.dart';

abstract interface class UserService {
  Future<List<User>> searchUsers();
  void addUser(UserDto user);
  Future<void> editUser(int id);
  void deleteUser(int id);
  void undo(int id);
  void back();
}
