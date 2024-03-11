class Person {

  final String name;
  final int birthYear;
  int _age = 0;
  int get age => _age;

  Person({required this.name, required this.birthYear});

  int myAge(int birthYear) {
    final now = DateTime.now();
    final year = now.year;

    _age = year - birthYear;

    return _age;
  }
}