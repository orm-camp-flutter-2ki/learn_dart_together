class Person {
  final String _name;
  final int _birthYear;

  Person({required String name, required int birthYear})
      : _name = name,
        _birthYear = birthYear;

  int get age => _calculateAgeFromBirthYear();

  int _calculateAgeFromBirthYear() {
    return DateTime.now().year - _birthYear;
  }
}
