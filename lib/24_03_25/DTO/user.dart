class User {
  final List<UserInfo> userInfo;

  User({required this.userInfo});

  User.fromJson(List json)
      : userInfo = json.map((e) => UserInfo.fromJson(e)).toList();

  @override
  String toString() {
    return 'User{userInfo: $userInfo}';
  }
}

class UserInfo {
  final int id;
  final String name;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  UserInfo(
      {required this.id,
      required this.name,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  UserInfo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        address = Address.fromJson(json['address']),
        phone = json['phone'],
        website = json['website'],
        company = Company.fromJson(json['company']);

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'address' : address.toJson(),
    'phone' : phone,
    'website' : website,
    'company' : company.toJson()
  };

  @override
  String toString() {
    return 'UserInfo{id: $id, name: $name, email: $email, address: $address, phone: $phone, website: $website, company: $company}';
  }
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
    'street' : street,
    'suite' : suite,
    'city' : city,
    'zipcode' : zipcode,
    'geo' : geo.toJson()
  };

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }
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
}
