/*import '../dto/todo_dto.dart';
import '../model/todo.dart';*/

import '../dto/user_dto.dart';
import '../model/user.dart';

extension UserDtoToStore on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: lat?.toDouble() ?? 0.0,
      longitude: lng?.toDouble() ?? 0.0,
    );
  }
}
