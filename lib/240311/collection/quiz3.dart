import 'dart:math';

import 'package:learn_dart_together/240311/encaps/person.dart';

void main() {
  Person hong = Person(name: '홍길동', birthYear: 2004);
  Person han = Person(name: '한석봉', birthYear: 1999);

  List<Map<String, Person>> persons = [
    {hong.name: hong},
    {han.name: han}
  ];

  for (Map<String, Person> person in persons) {
    person.entries.forEach((element) {
      Person printPerson = element.value;
      print('${printPerson.name} 의 나이는  ${printPerson.age}살');
    });
  }
}
