import 'address.dart';
import 'company.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final Address address;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  }); //생성자

  factory User.fromJson(Map<String, dynamic> json) {
    //네임드 생성자는 유저로 만드는게 아니라 .을 찍고 생성자로 만들겠다. 셍성자 쓸떄 map 을 받패
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),
    );
  }

  @override
  String toString() {
    return 'User id: $id name: $name username: $username email: $email phone: $phone website: $website company: $company address: $address';
  }
}
