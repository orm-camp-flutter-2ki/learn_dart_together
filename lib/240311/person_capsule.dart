class Person {
  final String _name;
  final int _birthYear;

  String get name => _name;

  int get age {
    return DateTime.now().year - _birthYear;
  }

  Person(this._name, this._birthYear);
}
