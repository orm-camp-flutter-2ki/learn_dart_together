class Person {
  final String _name;
  final int _birthYear;

  Person(this._name, this._birthYear);

  int get age => DateTime.now().year - _birthYear;
}
