class Person {
  final String _name;
  final int _birthYear;

  //방법3: 일반적인 그냥 생성자
  Person(this._name, this._birthYear);

  int get age {
    final thisYear = DateTime.now().year;
    int age = thisYear - _birthYear;

    return age;
  }

  String get name => _name;
}