import 'package:learn_dart_together/240314/a.dart';

import 'address.dart';

class User {
  String id;
  String name;
  String username;
  Address address;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.address});

  @override
  String toString() {
    return 'User{id: $id, name: $name, username: $username, address: $address}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          address == other.address;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ username.hashCode ^ address.hashCode;

  User copyWith({
    String? id,
    String? name,
    String? username,
    Address? address,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': username,
        'address': address,
      };

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        name = json['name'],
        username = json['username'],
        address = Address.fromJson(json['address']);
}
