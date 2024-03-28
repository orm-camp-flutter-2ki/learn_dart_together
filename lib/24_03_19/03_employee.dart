import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  // json으로부터 객체를 생성하는 생성자
  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  // 객체를 json 형태로 표현하는 메서드
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
        leader = json['leader'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader,
      };
}

void main() {
  Employee leader = Employee('홍길동', 41);
  Department department = Department('총무부', leader);

  // Department 인스턴스를 JSON 문자열로 변환
  String jsonString = jsonEncode(department);

  // company.txt 파일에 쓰기
  File('company.txt').writeAsStringSync(jsonString);

  print('직렬화된 데이터를 company.txt 파일에 저장했습니다.');
}
