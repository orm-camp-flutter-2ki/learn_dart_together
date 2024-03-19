import 'dart:convert';
import 'package:learn_dart_together/24_03_19/file.dart';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json):
        name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age
  };

  @override
  String toString() {
    return 'Employee{name: $name, age: $age}';
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Department.fromJson(Map<String, dynamic> json):
        name = json['name'],
        leader = Employee.fromJson(json['leader']);

  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson()
  };

  @override
  String toString() {
    return 'Department{name: $name, leader: $leader}';
  }
}

void main() {
  final employeeSerializedTitle = 'EmployeeSerialization.txt';
  final departmentSerializedTitle = 'DepartmentSerialization.txt';

  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);

  writeWithString(employeeSerializedTitle, jsonEncode(employee.toJson()));
  writeWithString(departmentSerializedTitle, jsonEncode(department.toJson()));

  Employee deserializedEmployee = Employee.fromJson(jsonDecode(readAsString(employeeSerializedTitle)));
  Department deserializedDepartment = Department.fromJson(jsonDecode(readAsString(departmentSerializedTitle)));

  print(deserializedEmployee.toString());
  print(deserializedDepartment.toString());
}