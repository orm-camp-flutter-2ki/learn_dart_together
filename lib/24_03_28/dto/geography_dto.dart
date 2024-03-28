class GeographyDto {
  GeographyDto({
    this.lat,
    this.lng,
  });

  GeographyDto.fromJson(dynamic json) {
    lat = num.parse(json['lat']);
    lng = num.parse(json['lng']);
  }

  num? lat;
  num? lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }
}
