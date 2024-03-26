class Geo {

  final double lat;
  final double lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> json)
      : lat = double.parse(json['lat']),
        lng = double.parse(json['lng']);

  Map<String, dynamic> toJson() =>
      {'lat': lat.toString(), 'lng': lng.toString()};

  Geo copyWith({double? lat, double? lng}) =>
      Geo(lat ?? this.lat, lng ?? this.lng);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Geo && runtimeType == other.runtimeType &&
              lat == other.lat && lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }
}