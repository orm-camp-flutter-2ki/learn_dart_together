import 'company.dart';

class Geo {
  final num lat;
  final num lng;
  Geo({required this.lat, required this.lng});


  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Geo && runtimeType == other.runtimeType &&
              lat == other.lat && lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  Geo copyWith ({
    num? lat,
    num? lng,
}) {
    return Geo (
      lat: lat ?? this.lat,
    lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toJson() => {
    'lat': lat,
    'lng': lng,
  };

  Geo.fromJson(Map<String, dynamic> json)
  : lat = num.parse(json['lat']),
    lng = num.parse(json['lng']);
  }
