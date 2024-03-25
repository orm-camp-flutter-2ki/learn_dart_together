import 'dart:convert';
import 'dart:io';

//데이터 클래스
//==, hashCode
//toString
//fromJson, toJson
//copyWith
class Employee {
  final String name;
  final int age;

  Employee(this.name, this.age);

  Employee copyWith({
    String? name,
    int? age,
}) {
    return Employee(name?? this.name, age?? this.age,);
  }

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Employee &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Employee{name: $name, age: $age}';
  }
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

void main() {
  final department = Department('총무부', Employee('홍길동', 41));

  // String jsonString = jsonEncode(department.toJson());
  String jsonString = jsonEncode(department);

  File('Company.txt').writeAsStringSync(jsonString);
}
