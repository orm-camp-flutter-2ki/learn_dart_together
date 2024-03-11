class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age
    };
  }
}