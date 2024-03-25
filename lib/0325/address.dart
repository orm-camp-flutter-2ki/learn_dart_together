import 'geo.dart';

class Address {

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = Geo.fromJson(json['geo']);

  Map<String, dynamic> toJson() =>
      {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo.toJson()
      };

  Address copyWith({String? street, String? suite, String? city, String? zipcode, Geo? geo, String? lat, String? lng}) =>
      Address(street ?? this.street, suite ?? this.suite, city ?? this.city,
          zipcode ?? this.zipcode, geo ?? this.geo.copyWith(lat: lat, lng: lng));

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Address && runtimeType == other.runtimeType &&
              street == other.street && suite == other.suite &&
              city == other.city && zipcode == other.zipcode &&
              geo == other.geo;

  @override
  int get hashCode =>
      street.hashCode ^ suite.hashCode ^ city.hashCode ^ zipcode.hashCode ^ geo.hashCode;

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }
}