class Employee {

  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {'name': name, 'age': age};
}