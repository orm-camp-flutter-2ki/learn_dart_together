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

void main() {
  Employee employee1 = Employee('홍길동', 1000);

  Department leader1 = Department('총무부', employee1);

  final Map<String, dynamic> text = leader1.toJson2();
  String stringText = jsonEncode(text);

  print(text); // Map
  print(stringText); // Json 형식의 String

  final myFile = File('company.txt');
  myFile.writeAsStringSync(stringText);
}
