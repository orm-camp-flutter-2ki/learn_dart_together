class GeoDto {

  final String? lat;
  final String? lng;

  const GeoDto({
    required this.lat,
    required this.lng,
  });

  factory GeoDto.fromJson(Map<String, dynamic> map) {
    return GeoDto(
      lat: map['lat'],
      lng: map['lng'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }
}