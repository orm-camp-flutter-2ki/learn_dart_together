import 'package:learn_dart_together/240325/practice3_address.dart';
import 'package:learn_dart_together/240325/practice3_company.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  ); //copyWith

  User copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    return User(
      id ?? this.id,
      name ?? this.name,
      username ?? this.username,
      email ?? this.email,
      address ?? this.address,
      phone ?? this.phone,
      website ?? this.website,
      company ?? this.company,
    );
  }

  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        address = Address.fromJson(json['address']),
        phone = json['phone'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': id,
        'username': username,
        'email': email,
        'address': address.toJson(),
        'phone': phone,
        'website': website,
        'company': company.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          email == other.email &&
          address == other.address &&
          phone == other.phone &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;

  @override
  String toString() {
    return 'User{id: $id, id: $name, username: $username, address: $address, phone: $phone, website: $website, company: $company}';
  }
}
