import '../dto/user_dto.dart';
import '../model/user.dart';
import 'package:learn_dart_together/common/extension.dart';

extension UserDtoMapper on UserDto {
  /// isValid == true인 UserDto에서만 호출할 것
  User toUser() => (!isValid)
      ? throw Exception('유효하지 않은 UserDto. isValid에 대해 true인 UserDto에서 호출하세요.')
      : User(
          name: name!,
          email: email!,
          latitude: double.parse(address!.geo!.lat!),
          longitude: double.parse(address!.geo!.lng!));

  bool get isValid =>
      name.isNotNull &&
      email.isNotNull &&
      address.isNotNull &&
      address!.geo.isNotNull &&
      address!.geo!.lat.isNotNull &&
      double.tryParse(address!.geo!.lat!).isNotNull &&
      address!.geo!.lng.isNotNull &&
      double.tryParse(address!.geo!.lng!).isNotNull;
}
