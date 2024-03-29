import 'package:learn_dart_together/24_03_28/dto/address_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/company_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/geography_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

import '../../24_03_25/DTO/user.dart';

extension UserMapper on UserDto {
  User transferDtoUser() {
    return User(
        name: name ?? 'null',
        email: email ?? 'null',
        latitude: AddressDto().transferDtoAddress().geo.lat,
        longitude: AddressDto().transferDtoAddress().geo.lng);
  }
}

extension AddressMapper on AddressDto {
  Address transferDtoAddress() {
    return Address(
        street: street ?? 'null',
        suite: suite ?? 'null',
        city: city ?? 'null',
        zipcode: zipcode ?? 'null',
        geo: GeographyDto().transferDtoGeography());
  }
}

extension GeoMapper on GeographyDto {
  Geography transferDtoGeography() {
    return Geography(lat: lat ?? -9999, lng: lng ?? -9999);
  }
}

extension CompanyMapper on CompanyDto {
  Company transferDtoCompany() {
    return Company(
        name: name ?? 'null',
        catchPhrase: catchPhrase ?? 'null',
        bs: bs ?? 'null');
  }
}
