class Person {
  final String name;
  final int birthYear;

  int get age {
    return DateTime.now().year - birthYear;
  }

  Person(this.name, this.birthYear);

}

void main() {
  Person person = Person('홍길동', 2000);
  print(person.age);
  print(person.name);
}
