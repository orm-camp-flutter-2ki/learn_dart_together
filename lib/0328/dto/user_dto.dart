import 'address_dto.dart';
import 'company_dto.dart';

class UserDto {

  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final AddressDto? address;
  final String? phone;
  final String? website;
  final CompanyDto? company;

  const UserDto({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'address': address,
      'phone': phone,
      'website': website,
      'company': company,
    };
  }

  factory UserDto.fromJson(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      email: map['email'],
      address: AddressDto.fromJson(map['address']),
      phone: map['phone'],
      website: map['website'],
      company: CompanyDto.fromJson(map['company']),
    );
  }
}