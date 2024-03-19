import 'dart:convert';
import 'dart:io';

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);
  final file = File('lib/240319_homework/company.txt');

  department.encode(file, department);
  department.decode(file);
  employee.name = '리암니슨';
  department.encode(file, department);
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

  void encode(file, Department department) {
    String jsonString = jsonEncode(department.toJson());
    file.writeAsStringSync(jsonString);
  }

  void decode(file) {
    String jsonString = file.readAsStringSync();
    Map<String, dynamic> data = jsonDecode(jsonString);
    Department.fromJson(data);
  }
}
