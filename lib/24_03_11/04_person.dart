class Person {
  final String name;
  final int birthYear;

  Person(this.name, this.birthYear);

  int get age => DateTime.now().year - birthYear;
}

class Person1 {
  final String _name;
  final int _age;

  Person1({required name, required age})
      : _name = name,
        _age = age;

  String get name => _name;

  int get age => _age;
}

class Person2 {
  final String _name;

  Person2({required name}) : _name = name;

  String get name => _name;
}
