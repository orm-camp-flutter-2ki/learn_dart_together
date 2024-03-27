import 'geo.dart';

class Address {
  String street;
  String city;
  String zipcode;
  Geo geo;

  Address(this.street, this.city, this.zipcode, this.geo);

  Map<String, dynamic> toJson() => {
        'street': street,
        'city': city,
        'zipcode': zipcode,
        'geo': geo.toJson(),
      };

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = Geo.fromJson(json['geo']);

  Address copyWith({
    String? street,
    String? city,
    String? zipcode,
    Geo? geo,
  }) {
    return Address(
      street ?? street!,
      city ?? city!,
      zipcode ?? zipcode!,
      geo ?? geo!,
    );
  }

  @override
  String toString() {
    return 'Address{street: $street, city: $city, zipcode: $zipcode, geo: $geo}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          street == other.street &&
          city == other.city &&
          zipcode == other.zipcode &&
          geo == other.geo;

  @override
  int get hashCode =>
      street.hashCode ^ city.hashCode ^ zipcode.hashCode ^ geo.hashCode;
}
