class User {
  String name;
  String email;
  double latitude;
  double longitude;

  User({
    required this.name,
    required this.email,
    required this.latitude,
    required this.longitude,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
