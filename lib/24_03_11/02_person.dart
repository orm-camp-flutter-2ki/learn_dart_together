class Person {
  final String name;
  final int birthYear;

  Person(this.name, this.birthYear);

  int get age => DateTime.now().year - birthYear;
}
