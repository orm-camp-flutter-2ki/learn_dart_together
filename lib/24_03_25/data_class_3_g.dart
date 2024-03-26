// Json Data의 변수 속성 정하기
// final 1
class Geo {
  final String lat;
  final String lng;

  // 생성자 제작
  // Json Data에 모두 값이 있어서 required 사용
  Geo({
    required this.lat,
    required this.lng,
  });

  // Json Data로 Geo 제작
  // fromJson 2
  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  // toString() 3
  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }

  // == 4
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geo &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  // hashCode 5
  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  // copyWith 6
  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}
