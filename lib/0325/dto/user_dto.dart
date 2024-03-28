import 'address_dto.dart';
import 'company_dto.dart'; // dto로 import 되는지 확인하기

class UserDto {
  num? id;
  String? name;
  String? username;
  String? email;
  AddressDto? address;
  String? phone;
  String? website;
  CompanyDto? company;

  UserDto({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  UserDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address = json['address'] != null ? AddressDto.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company = json['company'] != null ? CompanyDto.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['username'] = username;
    map['email'] = email;
    if (address != null) {
      map['address'] = address?.toJson();
    }
    map['phone'] = phone;
    map['website'] = website;
    if (company != null) {
      map['company'] = company?.toJson();
    }
    return map;
  }
}
