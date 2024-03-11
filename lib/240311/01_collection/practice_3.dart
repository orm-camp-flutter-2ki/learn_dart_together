class Person {
  String name;
  int _age;
  int get age => _age;

  Person({required this.name, required int age}) : _age = age;
}