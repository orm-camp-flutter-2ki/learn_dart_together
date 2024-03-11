void main() {
  List<Person> people = [
    Person('홍길동', 2004),
    Person('한석봉', 1999),
  ];

  Map<String, int> personAges = {};
  for (var person in people) {
    personAges[person.name] = DateTime.now().year - person.birthYear;
  }

  personAges.forEach((name, age) {
    print('$name의 나이는 $age살');
  });
}

class Person {
  String name;
  int birthYear;

  Person(this.name, this.birthYear);
  }