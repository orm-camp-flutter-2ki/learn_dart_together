class Employee { //이거 먼저 구현해야지 나머지 쓸 수 있음, 포함관계라서
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
    'age' : age,
    'name' : name,
  };
}

