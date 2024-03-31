import 'Address.dart';
import 'Company.dart';

/// id : 1
/// name : "Leanne Graham"
/// username : "Bret"
/// email : "Sincere@april.biz"
/// address : {"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874","geo":{"lat":"-37.3159","lng":"81.1496"}}
/// phone : "1-770-736-8031 x56442"
/// website : "hildegard.org"
/// company : {"name":"Romaguera-Crona","catchPhrase":"Multi-layered client-server neural-net","bs":"harness real-time e-markets"}

class Users {
  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  Users.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
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
