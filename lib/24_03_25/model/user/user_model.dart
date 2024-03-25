import 'package:learn_dart_together/24_03_25/model/user/address_model.dart';
import 'package:learn_dart_together/24_03_25/model/user/company_model.dart';

import 'geo_model.dart';

class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressModel address;
  final String phone;
  final String website;
  final CompanyModel company;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  @override
  String toString() {
    return 'name: $name, email: $email, phone: $phone, address: $address, company: $company';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressModel? address,
    String? phone,
    String? website,
    CompanyModel? company
  }) {
    return UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        company: company ?? this.company);
  }

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        address = json['address'] != null ? AddressModel.fromJson(json['address']): AddressModel(street: '', suite: '', city: '', zipcode: '', geo: GeoModel(lat: '', lng: '')),
        phone = json['phone'],
        website = json['website'],
        company = json['company'] != null ? CompanyModel.fromJson(json['company']) : CompanyModel(name: '', catchPhrase: '', bs: '');

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'name' : name,
      'username' : username,
      'email' : email,
      'address' : address,
      'phone' : phone,
      'website' : website,
      'company' : company,
    };
  }
}
