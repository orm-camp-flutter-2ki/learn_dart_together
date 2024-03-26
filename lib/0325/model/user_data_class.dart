class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address? address;
  final String phone;
  final String website;
  final Company? company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  User.fromJson(Map<String, dynamic> json) // 생성자
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        address =
            json['address'] != null ? Address.fromJson(json['address']) : null,
        phone = json['phone'],
        website = json['website'],
        company =
            json['company'] != null ? Company.fromJson(json['company']) : null;

  Map<String, dynamic> toJson() => // 함수
      {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'address': address?.toJson(),
        'phone': phone,
        'website': website,
        'company': company?.toJson(),
      };


  @override
  String toString() {
    return 'User{id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company}';
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          email == other.email &&
          address == other.address &&
          phone == other.phone &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;

  User copyWith({
    required int? id,
    required String? name,
    required String? username,
    required String? email,
    required Address? address,
    required String? phone,
    required String? website,
    required Company? company,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo? geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = json['geo'] != null ? Geo.fromJson(json['geo']) : null;

  // geo = json['geo'];

  Map<String, dynamic> toJson() => // 함수
      {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo,
      };

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
    required String? street,
    required String? suite,
    required String? city,
    required String? zipcode,
    required Geo? geo,
  }) {
    return Address(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  Geo({required this.lat, required this.lng});

  Geo.fromJson(Map<String, dynamic> json) // 생성자
      : lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() => // 함수
      {
        'lat': lat,
        'lng': lng,
      };

  @override
  String toString() {
    return 'Geo{lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geo &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  Geo copyWith({
    required String? lat,
    required String? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  Company.fromJson(Map<String, dynamic> json) // 생성자
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Map<String, dynamic> toJson() => // 함수
      {
        'name': name,
        'catchPhrase': catchPhrase,
        'bs': bs,
      };

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          catchPhrase == other.catchPhrase &&
          bs == other.bs;

  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;

  Company copyWith({
    required String? name,
    required String? catchPhrase,
    required String? bs,
  }) {
    return Company(
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }
}
