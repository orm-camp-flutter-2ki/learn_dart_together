class User {
  final String name;
  final String email;
  final double latitude;
  final double longitude;

//<editor-fold desc="Data Methods">
  const User({
    required this.name,
    required this.email,
    required this.latitude,
    required this.longitude,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          latitude == other.latitude &&
          longitude == other.longitude);

  @override
  int get hashCode =>
      name.hashCode ^ email.hashCode ^ latitude.hashCode ^ longitude.hashCode;

  @override
  String toString() {
    return 'User{ name: $name, email: $email, latitude: $latitude, longitude: $longitude,}';
  }

  User copyWith({
    String? name,
    String? email,
    double? latitude,
    double? longitude,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
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

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }

//</editor-fold>
}
