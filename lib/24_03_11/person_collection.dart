import 'dart:math';

class Person {
  String name;

  Person(this.name);

  int get age => (Random().nextInt(80) + 20);
}

void main() {
  List<Person> people = [];
  Map<String, int> peopleMap = {};

  Person mrHong = Person('홍길동');
  Person mrHan = Person('한석봉');

  people.add(mrHong);
  people.add(mrHan);

  for (Person person in people) {
    print(person.name);
  }

  for (Person person in people) {
    peopleMap[person.name] = person.age;
  }

  for (var element in peopleMap.entries) {
    print('${element.key}의 나이는 ${element.value}살');
  }
}
