import 'geo.dart';

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address({
   required this.street,
   required this.suite,
   required this.city,
   required this.zipcode,
   required this.geo,
});

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
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
          geo == other.geo;

  @override
  int get hashCode =>
      street.hashCode ^
      suite.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      geo.hashCode;

  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
}) {
    return Address(
      street: street ?? this.street,
      suite:  suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }

  Map<String, dynamic> toJson() => {
    'street': street,
    'suite': suite,
    'city': city,
    'zipcode': zipcode,
    'geo': geo,
  };

  Address.fromJson(Map<String, dynamic>json)

  : street = json['street'],
    suite = json['suite'],
    city = json['city'],
    zipcode = json['zipcode'],
    geo = Geo.fromJson(json['geo']);
}