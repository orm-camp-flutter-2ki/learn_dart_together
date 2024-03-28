import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? 'unknown',
      email: email ?? 'unknown',
      latitude: double.parse(address?.geo?.lat ?? '-1.0'),
      longitude: double.parse(address?.geo?.lng ?? '-1.0'),
    );
  }
}
