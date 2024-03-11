class Person {

  final String _name;
  final int _birthYear;

  Person(this._name, this._birthYear);

  String get name => _name;

  int get birthYear => _birthYear;

  int get age {
    return DateTime.now().year - _birthYear;
  }
}