import 'package:learn_dart_together/240328/dto/user_dto.dart';
import 'package:learn_dart_together/240328/model/user.dart';

extension UserDTOToUser on UserDTO {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: double.tryParse(address!['geo']['lat']) ?? 0.0,
      longitude: double.tryParse(address!['geo']['lat']) ?? 0.0,
    );
  }
}

extension USerToUserDTO on User {
  UserDTO toUserDTO() {
    return UserDTO();
  }
}
