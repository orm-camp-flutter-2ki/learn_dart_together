// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_dart_together/fetchdata/adress.dart';

import 'company.dart';

class User {
  int id;
  String name;
  String email;
  Adress? adress;
  String phone;
  String website;
  Company company;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.adress,
    required this.phone,
    required this.website,
    required this.company,
  });

  User copyWith({
    int? id,
    String? name,
    String? email,
    Adress? adress,
    String? phone,
    String? website,
    Company? company,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      adress: adress ?? this.adress,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      // adress null 처리
      'adress': adress == null ? adress : adress!.toJson(),
      'phone': phone,
      'website': website,
      'company': company.toMap(),
    };
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        adress = json['adress'],
        phone = json['phone'],
        website = json['website'],
        company = Company.fromMap(json['company']);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, adress: $adress, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.email == email && other.adress == adress && other.phone == phone && other.website == website && other.company == company;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ email.hashCode ^ adress.hashCode ^ phone.hashCode ^ website.hashCode ^ company.hashCode;
  }
}
