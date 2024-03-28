import 'dart:convert';

import 'package:collection/collection.dart';

class UserDTO {
  String? name;
  String? email;
  Map<String, dynamic>? address;
  UserDTO({
    this.name,
    this.email,
    this.address,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'address': address,
    };
  }

  factory UserDTO.fromJson(Map<String, dynamic> map) {
    return UserDTO(
      name: map['name'],
      email: map['email'],
      address: Map<String, dynamic>.from(map['address']),
    );
  }

  @override
  String toString() => 'UserDTO(name: $name, email: $email, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is UserDTO && other.name == name && other.email == email && mapEquals(other.address, address);
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ address.hashCode;
}
