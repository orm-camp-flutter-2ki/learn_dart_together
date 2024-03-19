class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
        'name': name, // 홍길동
        'age': age, // 41세
      };
}
