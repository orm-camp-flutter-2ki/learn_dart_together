class Person {
  final String _name;
  final int _birthYear;

  Person(this._name, this._birthYear);

  int get age {
    final thisYear = DateTime.now().year;
    int age = thisYear - _birthYear;

    return age;
  }

  String get name => _name;
}