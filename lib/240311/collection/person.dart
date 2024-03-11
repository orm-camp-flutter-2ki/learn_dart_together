class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age
    };
  }
}