class Person {
  final String name;
  final int birthYear;

  Person(this.name, this.birthYear);

  int get age {
    return DateTime.now().year - birthYear;
  }
}