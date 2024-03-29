import 'geo_dto.dart';

class AddressDto {

  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final GeoDto? geo;

  const AddressDto({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo,
    };
  }

  factory AddressDto.fromJson(Map<String, dynamic> map) {
    return AddressDto(
      street: map['street'],
      suite: map['suite'],
      city: map['city'],
      zipcode: map['zipcode'],
      geo: GeoDto.fromJson(map['geo']),
    );
  }
}

