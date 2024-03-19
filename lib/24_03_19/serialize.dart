import 'dart:convert';
import 'package:learn_dart_together/24_03_19/file.dart';

// Serializable 구현 실패.. 다른 방법을 찾아봐야할 듯
// - Dart는 리플렉션이 없음
// - 생성자는 추상메서드로 추상화 불가
// - Static은 컴파일 타임에 선언되므로 제네릭 파라미터에 접근 불가
//
// abstract interface class Serializable {
//     Serializable.fromJson(Map<String, dynamic> json);
//     Map<String, dynamic> toJson();
//
//     factory Serializable(Map<String, dynamic> json) {
//       return T.fr
//     }
// }
//
//
// class Serializer {
//   void serializeAndSaveAsFile(Serializable instance, String title) {
//     writeWithString(title, jsonEncode(instance.toJson()));
//   }
//
//   T deserializedFromFile<T extends Serializable>(String title) {
//     return T.fromJson(jsonDecode(readAsString(title)));
//   }
// }

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