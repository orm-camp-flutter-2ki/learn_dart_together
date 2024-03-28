class AddressDto {
  AddressDto({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  AddressDto.fromJson(dynamic json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] != null ? Geo.fromJson(json['geo']) : null;
  }

  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

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

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  Geo.fromJson(dynamic json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  String? lat;
  String? lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }
}
