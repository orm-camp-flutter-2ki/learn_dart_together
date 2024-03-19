import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

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

  // 방법 1 -> initializer list
  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.fromJson(json['leader']);

  // https://dart.dev/language/constructors#redirecting-constructors
  // 방법 2 -> Redirecting constructors
  // Department.fromJson(Map<String, dynamic> json)
  //     : this(json['name'], json['leader']);

  // https://dart.dev/language/constructors#factory-constructors
  // 방법 3 -> Factory constructors
  //  factory Department.fromJson(Map<String, dynamic> json) {
  //    return Department(json['name'], json['leader']);
  //  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Department &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          leader == other.leader;

  @override
  int get hashCode => name.hashCode ^ leader.hashCode;

  @override
  String toString() {
    return 'Department{name: $name, leader: $leader}';
  }
}

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);

  // 방법 1 -> 축약 X, toJson 명시적으로 호출
  Map<String, dynamic> json = department.toJson();
  String jsonString = jsonEncode(json);

  // 방법 2 -> 축약 O, toJson 명시적 호출
  // String jsonString = jsonEncode(department.toJson());

  // 방법 3 -> 객체 자체를 jsonEncode의 인자로 전달, toJson 메소드가 JsonEncode 내부에서 암시적으로 호출됨
  // String jsonString = jsonEncode(department);

  // Json 들여쓰기 이쁘게 하는 방법
  // JsonEncoder encoder = JsonEncoder.withIndent('  ');
  // String prettyJsonString = encoder.convert(department.toJson());

  File file = File('lib/240319/practice/company.txt');
  file.writeAsStringSync(jsonString);
}
