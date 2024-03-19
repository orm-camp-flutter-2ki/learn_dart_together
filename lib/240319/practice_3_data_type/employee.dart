class Employee {
  final String name;
  final int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
    'name' : name,
    'age' : age,
  };

}