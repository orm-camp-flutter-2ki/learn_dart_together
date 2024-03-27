import 'package:learn_dart_together/orm_240325/company.dart';

import 'address.dart';

class User {
  final int id;
  final String name;
  final String username;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(
    this.id,
    this.name,
    this.username,
    this.address,
    this.phone,
    this.website,
    this.company,
  );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': username,
        'address': address.toJson(),
        'phone': phone,
        'website': website,
        'company': company.toJson(),
      };

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        address = Address.fromJson(json['address']),
        phone = json['phone'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  User copyWith({
    int? id,
    String? name,
    String? username,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    return User(
      id ?? this.id,
      name ?? this.name,
      username ?? this.username,
      address ?? this.address,
      phone ?? this.phone,
      website ?? this.website,
      company ?? this.company,
    );
  }

  @override
  String toString() {
    return 'users{id: $id, name: $name, username: $username, address: $address, phone: $phone, website: $website, company: $company}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          address == other.address &&
          phone == other.phone &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;
}
