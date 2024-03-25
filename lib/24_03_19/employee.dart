import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson2() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Department.fromJson(String name, Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];

  Map<String, dynamic> toJson2() => {'name': name, 'leader': leader.toJson2()};
}
