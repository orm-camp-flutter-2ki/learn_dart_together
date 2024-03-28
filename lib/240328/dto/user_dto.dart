class UserDto {
  num? id;
  String? name;
  String? username;
  String? email;
  AddressDto? address;
  String? phone;
  String? website;
  CompanyDto? company;

  UserDto({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  UserDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
        json['address'] != null ? AddressDto.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company =
        json['company'] != null ? CompanyDto.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['username'] = username;
    map['email'] = email;
    if (address != null) {
      map['address'] = address?.toJson();
    }
    map['phone'] = phone;
    map['website'] = website;
    if (company != null) {
      map['company'] = company?.toJson();
    }
    return map;
  }
}

class CompanyDto {
  CompanyDto({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  CompanyDto.fromJson(dynamic json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }

  String? name;
  String? catchPhrase;
  String? bs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['catchPhrase'] = catchPhrase;
    map['bs'] = bs;
    return map;
  }
}

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

class GeoDto {
  GeoDto({
    this.lat,
    this.lng,
  });

  GeoDto.fromJson(dynamic json) {
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
