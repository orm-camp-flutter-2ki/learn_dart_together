class Geo {
  String lat;
  String lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'lng' : lng,
  };
}
