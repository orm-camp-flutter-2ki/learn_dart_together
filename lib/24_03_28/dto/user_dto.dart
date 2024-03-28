class UserDto {
  String? name;
  String? email;

  UserDto({this.name, this.email});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    return map;
  }

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
  }
}

class GeoDto {
  double? latitude;
  double? longitude;

  GeoDto({this.latitude, this.longitude});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  GeoDto.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
}
