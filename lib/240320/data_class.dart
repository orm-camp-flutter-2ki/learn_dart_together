import 'dart:io';

// 데이터 클래스
// ==, hashCode
// toString
// fromJson, toJson
// copyWith
class Employee {
  final String name;
  final int age;

  Employee(this.name, this.age);

  //copyWith
  Employee copyWith({
    String? name,
    int? age,
  }) {
    return Employee(
      name ?? this.name,
      age ?? this.age,
    );
  }

  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];


  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };

  //동등성 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Employee &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              age == other.age;

  //hashCode
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

  String jsonString = department.toJson().toString();

  File('company.txt').writeAsStringSync(jsonString);
}