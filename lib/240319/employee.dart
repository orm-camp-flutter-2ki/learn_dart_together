class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {'name': name, 'age': age};
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

// Employee 불러와서 사용하기 때문에 , 추가적으로 .tojson()을 해서 구석구석 json 형태로 만들어줄것!
  Map<String, dynamic> toJson() => {'name': name, 'leader': leader.toJson()};
}
