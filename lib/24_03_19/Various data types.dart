import 'dart:io';

/// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 임의의 부서에 소속되게 하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
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

void employeeSerialized() {
  final hong = Department('총무부', Employee('홍길동', 41));

  print('${hong.toJson()}');

  File('lib/24_03_19/company.txt').writeAsStringSync(hong.toJson().toString());
}

void main() {
  employeeSerialized();
}
