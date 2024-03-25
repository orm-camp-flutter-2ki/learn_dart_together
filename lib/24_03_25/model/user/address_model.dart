import 'package:learn_dart_together/24_03_25/model/user/geo_model.dart';

class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoModel geo;

  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  @override
  String toString() {
    return 'street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  AddressModel copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    GeoModel? geo
  }) {
    return AddressModel(
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        geo: geo ?? this.geo);
  }

  AddressModel.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = json['geo'] != null ? GeoModel.fromJson(json['geo']): GeoModel(lat: '', lng: '');

  Map<String, dynamic> toJson() {
    return {
      'street' : street,
      'suite' : suite,
      'city' : city,
      'zipcode' : zipcode,
      'geo' : geo
    };
  }
}
