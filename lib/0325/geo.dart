class Geo {

  final String lat; // string? double?
  final String lng; // string? double?

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() =>
      {'lat': lat, 'lng': lng};

  Geo copyWith({String? lat, String? lng}) =>
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