import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({required this.name, required this.age});

  //직렬화
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);
}

void main() {
  // txt파일 생성
  final myFile = File('company.txt');

  Employee employee = Employee(name: '홍길동', age: 41);

  employee.toJson();
  myFile.writeAsStringSync('${employee.toJson()}', mode: FileMode.append);
}
