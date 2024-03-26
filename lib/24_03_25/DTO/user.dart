// class User {
//   final List<User> User;
//
//   User({required this.User});
//
//   User.fromJson(List json)
//       : User = json.map((e) => User.fromJson(e)).toList();
//
//   @override
//   String toString() {
//     return 'User{User: $User}';
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is User &&
//           runtimeType == other.runtimeType &&
//           User == other.User;
//
//   @override
//   int get hashCode => User.hashCode;
// }

class User {
  final int id;
  final String name;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        address = Address.fromJson(json['address']),
        phone = json['phone'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'address': address.toJson(),
        'phone': phone,
        'website': website,
        'company': company.toJson()
      };

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, address: $address, phone: $phone, website: $website, company: $company}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          address == other.address &&
          phone == other.phone &&
          website == other.website &&
          company == other.company;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geography geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = Geography.fromJson(json['geo']);

  Map<String, dynamic> toJson() => {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo.toJson()
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
}

class Geography {
  final String lat;
  final String lng;

  Geography({required this.lat, required this.lng});

  Geography.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() => {'lat': lat, 'lng': lng};

  @override
  String toString() {
    return 'Geography{lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geography &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  Map<String, dynamic> toJson() =>
      {'name': name, 'catchPhrase': catchPhrase, 'bs': catchPhrase};

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
}
