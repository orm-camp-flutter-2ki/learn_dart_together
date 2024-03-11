class Person {
  final String name;
  final int birthYear;

  Person({
    required this.name,
    required this.birthYear,
  });

  int get age {
    return DateTime.now().year - birthYear;
  }
}

void main() {
  Person person1 = Person(name: '한정은', birthYear: 1998);
  print(person1.age);

}