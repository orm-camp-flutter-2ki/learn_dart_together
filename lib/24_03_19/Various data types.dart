import 'dart:convert';
import 'dart:io';

/// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고  직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
/// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

/// 노동자
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

/// 부서
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

String employeeSerialized() {
  final hong = Department('총무부', Employee('홍길동', 41));

  File('lib/24_03_19/company.txt').writeAsStringSync(jsonEncode(hong.toJson()));

  // jsonEncode(hong.toJson()); => json 형태로 인코딩 한 문자열
  // hong.toJson().toString(); => Map 형태를 문자열로 뽑음

  return jsonEncode(hong.toJson());
}

void main() {
  Department d = Department.fromJson(jsonDecode(employeeSerialized()));
  print(d.leader.name); // 홍길동

  print(
      employeeSerialized()); // {"name":"총무부","leader":{"name":"홍길동","age":41}} => JSON 형식
  print(jsonDecode(
      employeeSerialized())); // {name: 총무부, leader: {name: 홍길동, age: 41}} => Map 형식

  // fromJson() 함수는 json 형식으로 받은 데이터를 map 으로 바꾼 후 각 key 값으로 클래스에 있는 변수에 값을 할당해준다.
  // 따라서 데이터를 전달 할 때는 Map 형식으로 만든 후 json 으로 직렬화 시켜 전달하고, 받을 때는 전달 받은 json 데이터를 Map 형태로 역직렬화 하여 사용한다.
}
