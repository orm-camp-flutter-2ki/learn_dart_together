import 'dart:io';
import 'dart:core';

class Person {
  final String _name;
  final int? _age;

  String get name => _name;
  int? get age => _age;

  Person({
    required String name,
    int? age,
  })  : _name = name,
        _age = age;
}

void main() {
  final personService = PersonService();

  // PRACTICE 02.
  final hong = Person(name: '홍길동');
  final im = Person(name: '임꺽정');
  final persons = personService.makePersonsLists([hong, im]);

  persons.forEach((person) {
    print(person.name);
  });

  // PRACTICE 03.
}

class PersonService {
  List<Person> makePersonsLists(List<Person> persons) {
    return persons.map((person) {
      return person;
    }).toList();
  }
}

void practiceSecond() {
  final Map<String, int> persons = {};

  Person firstPerson = Person(name: '홍길동', age: 20);
  Person secondPerson = Person(name: '한석봉', age: 25);

  Map<String, int> personData = makeNameWithAgeData([
    firstPerson,
    secondPerson,
  ]);

  persons.addAll(personData);

  persons.forEach((name, age) {
    print('$name의 나이는 $age살');
  });
}

Map<String, int> makeNameWithAgeData(List<Person> persons) {
  Map<String, int> personNameWithAgeData = {};

  persons.forEach((person) {
    int? age = person.age;

    if (age == null) {
      throw Exception('age 값이 존재하지 않습니다.');
    }

    personNameWithAgeData[person.name] = age;
  });

  return personNameWithAgeData;
}
