import 'address.dart';
import 'company.dart';

class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  // toString 을 재정의 하면 해당 클래스를 사용할때 항상 불러온다.
  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $userName, email: $email, address: $address, phone: $phone, website: $website, Company: $company}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              userName == other.userName &&
              email == other.email &&
              address == other.address &&
              phone == other.phone &&
              website == other.website &&
              company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;

  User copyWith({
    int? id,
    String? name,
    String? userName,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        userName = json['username'],
        email = json['email'],
        address = Address.fromJson(json['address']),
        phone = json['phone'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'userName': userName,
    'email': email,
    'address': address.toJson(),
    'phone': phone,
    'website': website,
    'company': company.toJson(),
  };
}
