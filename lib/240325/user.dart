import 'address.dart';
import 'company.dart';
class User {
  final int id;
  final String name;
  final String userName;
  final String phone;
  final String website;
  final Address address;
  final Company company;

  User(
      {required this.id,
      required this.name,
      required this.userName,
      required this.phone,
      required this.website,
      required this.address,
      required this.company
      });


  @override
  String toString() {
    return 'User{id: $id, name: $name, userName: $userName, phone: $phone, website: $website, address: $address, company: $company}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          userName == other.userName &&
          phone == other.phone &&
          website == other.website &&
          address == other.address &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      userName.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      address.hashCode ^
      company.hashCode;

  User copyWith({
    int? id,
    String? name,
    String? userName,
    String? phone,
    String? website,
    Address? address,
    Company? company,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      address: address ?? this.address,
      website: website ?? this.website,
      phone: phone ?? this.phone,
      company: company ?? this.company,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': userName,
        'phone': phone,
        'website': website,
        'address': address.toJson(),
        'company': company.toJson(),
      };

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        name = json['name'],
        userName = json['username'],
        phone = json['phone'],
        website = json['website'],
        address = Address.fromJson(json['address']),
        company = Company.fromJson(json['company']);
}
