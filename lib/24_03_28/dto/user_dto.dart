import 'package:collection/collection.dart';

class UserDto {
  String? name;
  String? email;
  Map<String, dynamic>? address;

  UserDto({
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

  factory UserDto.fromJson(Map<String, dynamic> map) {
    return UserDto(
      name: map['name'],
      email: map['email'],
      address: Map<String, dynamic>.from(map['address']),
    );
  }

  @override
  String toString() => 'UserDto(name: $name, email: $email, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is UserDto &&
        other.name == name &&
        other.email == email &&
        mapEquals(other.address, address);
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ address.hashCode;
}
