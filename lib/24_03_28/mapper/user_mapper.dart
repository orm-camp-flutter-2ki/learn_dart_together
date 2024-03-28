import 'package:learn_dart_together/24_03_25/01_user.dart';

import '../dto/user_dto.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? '',
      email: email ?? '',
      id: 0,
      phone: '',
      website: '',
    );
  }
}

extension GeoDtoToUser on GeoDto {
  Geo toGeo() {
    return Geo(
      lat: latitude?.toString() ?? '0.0',
      lng: longitude?.toString() ?? '0.0',
    );
  }
}

extension UserToUserDto on User {
  UserDto toUserDto() {
    return UserDto(
      name: name,
      email: email,
    );
  }
}

extension GeoToGeoDto on Geo {
  GeoDto toGeoDto() {
    return GeoDto(
      latitude: double.parse(lat),
      longitude: double.parse(lng),
    );
  }
}
