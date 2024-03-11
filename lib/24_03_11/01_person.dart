class Person {
  String _name;
  int _birthYear;

  Person(this._name, this._birthYear);

  String get name => _name;

  int get age => DateTime.now().year - _birthYear;
}
