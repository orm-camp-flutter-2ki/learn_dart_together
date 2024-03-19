//
// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

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
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  // 이부분 추가 확인 필요 ...,,,,....,,,,,
  // 리더 value =
  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.fromJson(json['leader']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}

void main() {
  final mrHong = Employee('홍길동', 41);
  final data = Department('총무부', mrHong);
  final sample = data.toJson();

  //파일 만들기
  final makeFile = File('company.txt');
  makeFile.writeAsStringSync(jsonEncode(sample));
}
