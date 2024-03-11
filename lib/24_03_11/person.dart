class Person {
  static const defaultBirthYear = 2024;
  late final String name;
  late final int _birthYear;

  int get age => DateTime.now().year - _birthYear;

  Person({required this.name, int? birthYear}):
    _birthYear = birthYear?? defaultBirthYear;
}
