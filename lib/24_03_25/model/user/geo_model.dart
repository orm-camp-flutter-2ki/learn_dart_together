class GeoModel {
  final String lat;
  final String lng;

  GeoModel({required this.lat, required this.lng});

  @override
  String toString() {
    return 'lat: $lat, lng: $lng';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  GeoModel copyWith({
    String? lat,
    String? lng,
  }) {
    return GeoModel(
        lat: lat ?? this.lat,
        lng: lng ?? this.lng);
  }

  GeoModel.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() {
    return {
      'lat' : lat,
      'lng' : lng
    };
  }
}