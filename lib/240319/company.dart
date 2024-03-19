import 'dart:convert';

class Employee {
  String name;
  int age;

  Employee(
    this.name,
    this.age,
  );

  // Employee.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Departemnet {
  String name;
  Employee leader;

  Departemnet(
    this.name,
    this.leader,
  );

  // Departemnet.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       leader = json['leader'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}
