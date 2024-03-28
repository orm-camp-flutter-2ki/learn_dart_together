import 'package:learn_dart_together/240328/dto/user/user_dto.dart';
import 'package:learn_dart_together/240328/model/user/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: latitude ?? 0.0,
      longitude: longitude ?? 0.0
    );
  }
}