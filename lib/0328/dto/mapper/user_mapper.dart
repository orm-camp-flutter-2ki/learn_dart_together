import 'package:learn_dart_together/0328/dto/validator/address_validator.dart';
import 'package:learn_dart_together/0328/dto/validator/geo_validator.dart';
import 'package:learn_dart_together/0328/dto/validator/user_validator.dart';

import '../../model/user.dart';
import '../user_dto.dart';

extension Mapper on UserDto {
  User? toUser() {
    if (validateName() &&
        validateEmail() &&
        validateAddress() &&
        address!.validateGeo() &&
        address!.geo!.validateLat() &&
        address!.geo!.validateLng()) {
      return User(
          name: name!,
          email: email!,
          latitude: double.parse(address!.geo!.lat!),
          longitude: double.parse(address!.geo!.lng!));
    }

    return null;
  }
}