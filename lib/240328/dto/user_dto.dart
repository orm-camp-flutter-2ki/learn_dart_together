class UserDto {
  String? name;
  String? email;
  double? latitude;
  double? longitude;

  UserDto({
    this.name,
    this.email,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'email': this.email,
      'latitude': this.latitude,
      'longitude': this.longitude,
    };
  }

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      name: json['name'] as String,
      email: json['email'] as String,
      latitude: json['address']['geo']['latitude'] ?? 0.0,
      longitude: json['address']['geo']['longitude'] ?? 0.0,
    );
  }
}
