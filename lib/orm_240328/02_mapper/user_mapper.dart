import '../../orm_240326/model/user.dart';
import '../02_dto/user_dto.dart';

extension UserDtoToStore on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      address: address ?? ,
    );
  }
}
