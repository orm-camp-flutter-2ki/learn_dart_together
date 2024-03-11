class Person {
  final String _name;
  final int _age;

  Person({required String name, required int age})
      : _name = name,
        _age = age;

  int get age => _age;
  String get name => _name;
}
