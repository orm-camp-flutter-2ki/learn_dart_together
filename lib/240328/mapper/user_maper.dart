import 'package:learn_dart_together/240328/dto/user_dto.dart';

import '../model/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: latitude ?? 0.0,
      longitude: longitude ?? 0.0,
    );
  }
}
