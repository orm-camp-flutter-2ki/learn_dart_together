import 'dart:convert';
import 'dart:io';

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);
  final file = File('lib/240319_homework/company.txt');

  String jsonString = jsonEncode(department.toJson());
  file.writeAsStringSync(jsonString);

  jsonString = file.readAsStringSync();
  Map<String, dynamic> data = jsonDecode(jsonString);

  Department.fromJson(data);
  print(Department.fromJson(data));

  department.name = '리암니슨';
}

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = (json['age']);

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
    'leader': leader.toJson(),
  };

}

