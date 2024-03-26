import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Adress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Map<String, num> geo; // {'lat': 11, 'Ing': 22 }

  Adress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo,
    };
  }

  Adress.fromJson(Map<String, dynamic> map)
      : street = map['street'] as String,
        suite = map['suite'] as String,
        city = map['city'] as String,
        zipcode = map['zipcode'] as String,
        geo = map['geo'];

  @override
  bool operator ==(covariant Adress other) {
    if (identical(this, other)) return true;

    return other.street == street && other.suite == suite && other.city == city && other.zipcode == zipcode && other.geo == geo;
  }

  @override
  int get hashCode {
    return street.hashCode ^ suite.hashCode ^ city.hashCode ^ zipcode.hashCode ^ geo.hashCode;
  }

  @override
  String toString() {
    return 'Adress(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}
