class UserDto {
  UserDto({
      this.id, 
      this.name, 
      this.username, 
      this.email, 
      this.address, 
      this.phone, 
      this.website, 
      this.company,});

  UserDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company = json['company'] != null ? Company.fromJson(json['company']) : null;
  }
  num? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

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

class Company {
  Company({
      this.name, 
      this.catchPhrase, 
      this.bs,});

  Company.fromJson(dynamic json) {
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

class Address {
  Address({
      this.street, 
      this.suite, 
      this.city, 
      this.zipcode, 
      this.geo,});

  Address.fromJson(dynamic json) {
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
      this.lng,});

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