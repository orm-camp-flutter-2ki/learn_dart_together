class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Map<String, dynamic> geo;

// "lat": "-37.3159",
// "lng": "81.1496"

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: json['geo'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          street == other.street &&
          suite == other.suite &&
          city == other.city &&
          zipcode == other.zipcode &&
          geo['lat'] == other.geo['lat'] &&
          geo['lng'] == other.geo['lng'];

  // bool dynamicEquals(dynamic a, dynamic b) {
  //   if (identical(a, b)) return true;
  //   if (a == null || b == null) return false;
  //   return true;
  // }

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }

  @override
  int get hashCode =>
      street.hashCode ^
      suite.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      geo['lat'].hashCode ^
      geo['lng'].hashCode;
}
