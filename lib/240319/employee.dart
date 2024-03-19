class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.from(Map<String, dynamic> json) //map형식으로 json저장
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}
