import 'dart:convert';
import 'dart:io';

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);
  final file = File('lib/240319_homework/company.txt');

  String jsonString = jsonEncode(department.toJson());
  file.writeAsStringSync(jsonString);
}

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}
