// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_dart_together/fetchdata/adress.dart';

import 'company.dart';

class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final Adress? adress;
  final String phone;
  final String website;
  final Company company;
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.adress,
    required this.phone,
    required this.website,
    required this.company,
  });

  User copyWith({
    int? id,
    String? name,
    String? userName,
    String? email,
    Adress? adress,
    String? phone,
    String? website,
    Company? company,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      userName: userName ?? this.userName,
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
      'userName': userName,
      'email': email,
      'adress': adress?.toJson(),
      'phone': phone,
      'website': website,
      'company': company.toJson(),
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      userName: map['username'] as String,
      email: map['email'] as String,
      adress: map['address'] != null ? Adress.fromJson(map['address'] as Map<String, dynamic>) : null,
      phone: map['phone'] as String,
      website: map['website'] as String,
      company: Company.fromJson(map['company'] as Map<String, dynamic>),
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, email: $email, adress: $adress, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.userName == userName &&
        other.email == email &&
        other.adress == adress &&
        other.phone == phone &&
        other.website == website &&
        other.company == company;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ userName.hashCode ^ email.hashCode ^ adress.hashCode ^ phone.hashCode ^ website.hashCode ^ company.hashCode;
  }
}
