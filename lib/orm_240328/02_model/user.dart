

class User {
  final String name;
  final String email;
  final num lat;
  final num lng;

  User(this.name, this.email, this.lat,
      this.lng); // Map<String, dynamic> toJson() => {
  //
  //       'name': name,
  //       'email': email,
  //       'address': address.toJson(),
  //     };
  //
  // User.fromJson(Map<String, dynamic> json)
  //     :
  //       name = json['name'],
  //       email = json['email'],
  //       address = Address.fromJson(json['address']);

  User copyWith({
    String? name,
    String? email,
    num? lat,
    num? lng,
  }) {
    return User(
      name ?? this.name,
      email ?? this.email,
      lat ?? this.lat,
      lng ?? this.lng,
    );
  }

  @override
  String toString() {
    return 'users{ name: $name, email: $email, lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode =>
      name.hashCode ^ email.hashCode ^ lat.hashCode ^ lng.hashCode;
}
