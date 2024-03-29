import 'package:learn_dart_together/240329/dto/user_dto.dart';

import '../model/user.dart';

extension ToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: double.tryParse(address?.geo?.lat ?? '0.0') ?? 0.0,
      longitude: double.tryParse(address?.geo?.lng ?? '0.0') ?? 0.0,
    );
  }
}
