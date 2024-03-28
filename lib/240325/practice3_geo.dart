class Geo {
  final String lat;
  final String lng;

  Geo(this.lat, this.lng);

  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat ?? this.lat,
      lng ?? this.lng,
    );
  }

  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geo && runtimeType == other.runtimeType && lat == other.lat;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  @override
  String toString() {
    return 'Address{lat: $lat, lng: $lng}';
  }
}
// void main() async {
//   List<Address> userAddressList = await UserApi().getUsers();
//   print(userAddressList);
// }
