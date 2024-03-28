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
    return 'User{name: $name, email: $email, latitude: $latitude, longitude: $longitude}';
  }
}
