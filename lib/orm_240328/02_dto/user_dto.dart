class UserDto {
  String? name;
  String? email;
  num? lat;
  num? lng;

  UserDto({
    this.name,
    this.email,
    this.lat,
    this.lng,
  });

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    lat = num.parse(json['address']['geo']['lat']);
    lng = num.parse(json['address']['geo']['lng']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['address']['geo']['lat'] = lat;
    map['address']['geo']['lng'] = lng;
    return map;
  }
}
