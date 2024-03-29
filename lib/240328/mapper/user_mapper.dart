import 'package:learn_dart_together/240328/dto/user_dto.dart';
import 'package:learn_dart_together/240328/model/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      latitude: (address != null && address?.geo != null &&
          address?.geo?.lat != null) ? double.parse(address!.geo!.lat!) : 0.0,
      longitude: (address != null && address?.geo != null &&
        address?.geo?.lng != null) ? double.parse(address!.geo!.lng!) : 0.0
    );
  }
}
