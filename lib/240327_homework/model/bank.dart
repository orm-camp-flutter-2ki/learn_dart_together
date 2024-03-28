import 'dart:convert';

import 'bank_json.dart';

void main() {
  final result = Bank.fromJson(jsonDecode(jsonString));
  print(result);
}

class Bank {
  final String name;
  final String address;
  final String phone;

  Bank(this.name, this.address, this.phone);

  @override
  String toString() {
    return 'Bank{name: $name, address: $address, phone: $phone}';
  }

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phone': phone,
      };
}

//from json 영어 바꿈
//tojson plone -> phone
//객체값을 알기위해 toSring() 정의
//as String 괜찮은가?
