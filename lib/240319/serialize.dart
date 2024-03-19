import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      age = json['age'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Department.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      leader = Employee.fromJson(json['leader']);

  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson()
    // Employee 클래스에 toJson()이 있으면
    // leader에 값을 넣을 때 toJson() 생략 가능
  };

  void createTxtFile() {
    final file = File('test/240319/company.txt');
    file.writeAsStringSync(jsonEncode(toJson()));
  }
}