import 'package:learn_dart_together/24_04_02/dto/user_dto.dart';

import '../../model/user.dart';

extension Mapper on UserDto {
  User toUser() {
    return User(
        id: id ?? -1,
        name: name ?? '',
        address: address ?? '',
        phone: phone ?? '',
        signUpDate: signUpDate?.toString() ?? DateTime.now().toString(),
        birth: birth ?? '');
  }
}
