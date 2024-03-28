class User {
  final String name;
  final String email;
  final double latitude;
  final double longitude;

  User({required this.name, required this.email, required this.latitude, required this.longitude});

  @override
  String toString() {
    return 'User{name: $name, email: $email, latitude: $latitude, longitude: $longitude}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          latitude == other.latitude &&
          longitude == other.longitude;

  @override
  int get hashCode =>
      name.hashCode ^ email.hashCode ^ latitude.hashCode ^ longitude.hashCode;
}