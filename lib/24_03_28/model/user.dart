class User {
  final String name;
  final String email;
  final double latitude;
  final double longitude;

  const User({
    required this.name,
    required this.email,
    required this.latitude,
    required this.longitude,
  });

  @override
  String toString() {
    return 'User(name: $name, email: $email, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.email == email &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        latitude.hashCode ^
        longitude.hashCode;
  }
}