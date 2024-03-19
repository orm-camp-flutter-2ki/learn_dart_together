class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);
  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson(), // Employee 객체를 JSON으로 변환
  };
}
