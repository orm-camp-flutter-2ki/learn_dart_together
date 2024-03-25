class Geo {
  double lat;
  double lng;

  Geo(this.lat, this.lng);

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };

  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  Geo copyWith({
    double? lat,
    double? lng,
  }) {
    return Geo(
      lat ?? lat!,
      lng ?? lng!,
    );
  }

  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geo &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}
