class Person {
  final int thisYear = DateTime.now().year;
  final String _name;
  final int _birthYear;

  Person(this._name, this._birthYear);

  int get age => thisYear - _birthYear;
}
