class Person {
  final String name;
  final int birthdYear;

  int get age {
    return DateTime.now().year - birthdYear;
  }

  Person(this.name, this.birthdYear);
}
