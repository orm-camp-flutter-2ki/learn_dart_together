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
  // fromJson은 department 객체를 만든다.
  // 왜 일반 메소드대신 생성자로 사용하냐?
  // toJson은 객체의 현재 상태를 JSON으로 바꾸는것. 이미 객체가 초기화 되어있는 상태에서 하는것이기 때문에 메소드 형태로 구현됨
  // 하지만 fromJson은 Json데이터를 받아 객체(=인스턴스)를 생성하고 초기화 하는것.
  // 그래서 fromJson을 생성자로 사용하면 객체의 생성과 초기화를 동시에 처리할 수 있음.
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
  final whatisthis = Department.fromJson(sample);
  print(whatisthis);
  //파일 만들기
  // final makeFile = File('company.txt');
  // makeFile.writeAsStringSync(jsonEncode(sample));
}
