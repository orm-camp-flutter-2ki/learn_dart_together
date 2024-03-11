class Person {
  final int thisYear = DateTime.now().year;

  String _name;
  int _birthYear;

  Person(this._name, this._birthYear);

  int get age => thisYear - _birthYear;
}
