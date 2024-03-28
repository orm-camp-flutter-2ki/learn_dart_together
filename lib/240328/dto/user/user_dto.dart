class UserDto {
  String? name;
  String? email;
  double? latitude;
  double? longitude;

  UserDto({
    this.name,
    this.email,
    this.latitude,
    this.longitude
  });

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    latitude = double.parse(json['address']['geo']['lat']);
    longitude = double.parse(json['address']['geo']['lng']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }
}