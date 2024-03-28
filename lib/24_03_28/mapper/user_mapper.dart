import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: double.tryParse(address!['geo']['lat']) ?? 0.0,
      longitude: double.tryParse(address!['geo']['lat']) ?? 0.0,
    );
  }
}

extension USerToUserDto on User {
  UserDto toUserDto() {
    return UserDto();
  }
}
