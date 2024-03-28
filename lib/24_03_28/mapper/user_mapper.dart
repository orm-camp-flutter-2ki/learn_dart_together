import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? 'unknown',
      email: email ?? 'unknown',
      latitude: _stringParseToDouble(address?.geo?.lat ?? '0.0'),
      longitude: _stringParseToDouble(address?.geo?.lng ?? '0.0'),
    );
  }

  double _stringParseToDouble(String value) {
    return double.tryParse(value) ?? 0.0;
  }
}
