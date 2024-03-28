class Geo {
  num? lat;
  num? lng;

  Geo({
    this.lat,
    this.lng,
  });

  Geo.fromJson(dynamic json) {
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
