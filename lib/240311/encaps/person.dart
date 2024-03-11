class Person {
  late String _name;
  late int _birthYear;
  late final int _age;
  final now = DateTime.now();

  Person({required String name, required int birthYear}) {
    this._name = name;
    this._birthYear = birthYear;
    this._age = now.year - birthYear;
  }

  void set name(String paramName) {
    this._name = paramName;
  }

  String get name {
    return _name;
  }

  void set birthYear(int birthYear) {
    _birthYear = birthYear;
  }

  int get birthYear {
    return _birthYear;
  }

  int get age {
    return _age;
  }
}

void main() {}
