import 'dart:io';
import 'dart:convert';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  // 직렬화 : toJson() 메서드
  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };

  // 역직렬화 : fromJson() 메서드
  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age']; // 'age'로 수정
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  // 직렬화 : toJson() 메서드
  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson(),
  };

  // 역직렬화 : fromJson() 메서드
  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.fromJson(json['leader']);
}