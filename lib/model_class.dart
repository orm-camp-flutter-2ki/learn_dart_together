import 'dart:io';

// 데이터 클래스
// ==, hashCode
// toString
// fromJson, toJson
// copyWith
class Hero {
  final String name;

  Hero(this.name);

  //copyWith
  Hero copyWith({
    String? name,
  }) {
    return Hero(
      name ?? this.name,
    );
  }

  //Named 생성자
  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  Hero.fromJson(Map<String, dynamic> json)
      : stringA = json['name'],
        age = json['age'];

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() => {
        'name': stringA,
        'age': age,
      };

  //동등성 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Employee &&
          runtimeType == other.runtimeType &&
          stringA == other.stringA &&
          age == other.age;

  //hashCode
  @override
  int get hashCode => stringA.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Employee{name: $stringA, age: $age}';
  }
}

class Department {
  String name;
  leader leader;

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
