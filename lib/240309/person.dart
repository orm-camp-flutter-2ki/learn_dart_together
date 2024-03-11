import 'dart:io';

class Person {
  final String _name;

  Person({
    required String name
  }) : _name = name;
}

void main() {
  List<Person> persons = [];

  Person firstPerson = Person(name: '홍길동');
  Person secondPerson = Person(name: '한석봉');

  persons.add(firstPerson);
  persons.add(secondPerson);

  print(persons);
}