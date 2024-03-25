import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String website;

  User(this.id, this.name, this.email, this.phone, this.website,);

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, phone: $phone, website: $website}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          phone == other.phone &&
          website == other.website;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      website.hashCode;

  // json으로부터 객체를 생성하는 생성자
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        website = json['website'];

  // 객체를 json 으로부터 표현하는 메서드
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'phone': phone,
    'website': website,
  };
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address(this.street, this.suite, this.city, this.zipcode);

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          street == other.street &&
          suite == other.suite &&
          city == other.city &&
          zipcode == other.zipcode;

  @override
  int get hashCode =>
      street.hashCode ^ suite.hashCode ^ city.hashCode ^ zipcode.hashCode;

  // json으로부터 객체를 생성하는 생성자
  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['address'];

  // 객체를 json 으로부터 표현하는 메서드
  Map<String, dynamic> toJson() => {
    'street': street,
    'suite': suite,
    'city': city,
    'zipcode': zipcode,
  };
}

class Geo {
  final String lat;
  final String lng;

  Geo(this.lat, this.lng);

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

  // json으로부터 객체를 생성하는 생성자
  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];

  // 객체를 json 으로부터 표현하는 메서드
  Map<String, dynamic> toJson() => {
    'lat': lat,
    'lng': lng,
  };
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company(this.name, this.catchPhrase, this.bs);

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

  // json으로부터 객체를 생성하는 생성자
  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];

  // 객체를 json 으로부터 표현하는 메서드
  Map<String, dynamic> toJson() => {
    'name': name,
    'catchPhrase': catchPhrase,
    'bs': bs,
  };
}

void main() {}
