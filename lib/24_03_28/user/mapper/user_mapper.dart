import 'package:learn_dart_together/24_03_28/user/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/user/model/user.dart';

extension ToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: address!.geo!.lat ?? 0.0,
      longitude: address!.geo!.lng ?? 0.0,
    );
  }
}
