void main() {
  Person person = Person('김씨', 1950);
  print(person.age);
}

class Person {
  final String name;
  final int birthYear;

  int get age {
    return DateTime.now().year - birthYear;
  }

  Person(this.name, this.birthYear);
}
