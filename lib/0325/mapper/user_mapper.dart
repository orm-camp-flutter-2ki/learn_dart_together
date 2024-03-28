import 'package:learn_dart_together/0325/dto/user_dto.dart';
import 'package:learn_dart_together/0325/mapper/address_mapper.dart';
import 'package:learn_dart_together/0325/mapper/company_mapper.dart';

import '../dto/address_dto.dart';
import '../dto/geo_dto.dart';
import '../model/user.dart';

extension UserDtoToUser on UserDto {
  User toUser() {
    return User(
      name: name ?? 'unknown',
      email: email ?? 'unknown',
      latitude: double.tryParse(address?.geo?.lat ?? '0.0') ?? 0.0,
      longitude: double.tryParse(address?.geo?.lng ?? '0.0') ?? 0.0,
    );
  }
}
// 밑의 두 코드는 같은(?) 코드
// latitude: double.tryParse(address?.geo?.lat ?? '0.0') ?? 0.0,
// latitude: double.tryParse(address!.geo!.lat!) ?? 0.0,
// tryParse : String을 double로 변환할 수 있는지 시도
// 변환 성공 시 해당 값을 반환하고 실패하면 null을 반환
// ! 또는 ?? 연산자를 사용하여 null이 아님을 확실히 보장(!)하거나, null일 때의 기본값을 설정

extension UserToUserDto on User {
  UserDto toUserDto() {
    return UserDto(
      name: name,
      email: email,
      address: AddressDto(
        geo: GeoDto(
          lat: latitude.toString(),
          lng: longitude.toString(),
        ),
      ),
    );
  }
}
