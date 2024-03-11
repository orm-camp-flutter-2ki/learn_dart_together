void main() {
  final person = Person(name: '', age: 0);
}

class Person {
  String name;
  int age;

  // 기본 생성자는 있다고 본다
  Person({
    required this.name,
    required this.age,
  });
}
