import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({required this.name, required this.age});

  //toJson: Data(직원 정보)의 String type 직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department({required this.name, required this.leader});

  //직원 정보의 역직렬화
  Map<String, dynamic> fromJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}

void main() {
  // txt파일 생성
  final myFile = File('company.txt');

  // instance > insert to Map > send to 'company.txt'
  Employee employee = Employee(name: '홍길동', age: 41);
  // Employee employee2 = Employee(name: '김만덕', age: 36);
  Map<String, dynamic> employeeMap = {};
  employeeMap.addAll(employee.toJson());
  // employeeMap.addAll(employee2.toJson());
  myFile.writeAsStringSync('$employeeMap', mode: FileMode.append);

  // instance > insert to Map > send to 'company.txt'
  Department department = Department(name: '디자인팀', leader: employee);
  Map<String, dynamic> departmentMap = department.fromJson();
  myFile.writeAsStringSync('$departmentMap', mode: FileMode.append);
}
