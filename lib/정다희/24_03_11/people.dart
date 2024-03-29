class Person {
  final String _name;
  final int _birthYear;
  int _age;

  get age => DateTIme.now().year - _birthYear;

  Person({required this.name, required this.birthYear})
      : _name = name,
        _birthYear = birthYear;
}
