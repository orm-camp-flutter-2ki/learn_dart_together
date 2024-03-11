class Person {
  final String name;
  final int birthdYear;

  int get age {
    return DateTime.now().year - birthdYear + 1;
  }

  Person(this.name, this.birthdYear);
}

void main() {
  Person person = Person('홍길동', 1996);
  print("${person.name},${person.birthdYear},${person.age}");
}
