import 'geo_dto.dart';

class AddressDto {
  AddressDto({
      this.street, 
      this.suite, 
      this.city, 
      this.zipcode, 
      this.geo,});

  AddressDto.fromJson(dynamic json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] != null ? GeoDto.fromJson(json['geo']) : null;
  }
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoDto? geo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = street;
    map['suite'] = suite;
    map['city'] = city;
    map['zipcode'] = zipcode;
    if (geo != null) {
      map['geo'] = geo?.toJson();
    }
    return map;
  }

}