class GeoDto {
  String? lat;
  String? lng;

  GeoDto({
    this.lat,
    this.lng,
  });

  GeoDto.fromJson(dynamic json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }
}
