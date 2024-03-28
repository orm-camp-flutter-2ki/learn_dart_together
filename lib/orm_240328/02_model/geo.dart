class Geo {
  String lat;
  String lng;

  Geo(this.lat, this.lng);

  Geo copyWith({
    String? lat,
    String? lng,
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
