import '../dto/user_dto.dart';
import '../model/user.dart';

extension UserDtoTOUserList on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      // 현재 Dto는 모두 nullable 한 상태임으로
      latitude: double.parse(address?.geo?.lat ?? '0.0'),
      longitude: double.parse(address?.geo?.lng ?? '0.0'),
    );
  }
}
