class Person {
  final String name;
  final int birthYear;

  Person(this.name, this.birthYear);

  int get age {
    final thisYear = DateTime.now().year;
    int age = thisYear - birthYear;

    return age;
  }

}