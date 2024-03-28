import '../02_dto/user_dto.dart';
import '../02_model/user.dart';

extension UserDtoToStore on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: lat?.toDouble() ?? -1,
      longitude: lng?.toDouble() ?? -1,
    );
  }
}
