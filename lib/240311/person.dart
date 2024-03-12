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

class PersonService {
  List<Person> makePersonsLists(List<Person> persons) {
    return persons.map((person) {
      return person;
    }).toList();
  }

  Map<String, int> makePersonMap(List<Person> persons) {
    final Map<String, int> personWithAgeData = {};

    persons.forEach((person) {
      int? age = person.age;

      if (age == null) {
        throw Exception(['age 값이 존재하지 않습니다.']);
      }

      personWithAgeData[person.name] = age;
    });

    return personWithAgeData;
  }
}

void main() {
  final personService = PersonService();

  // PRACTICE 02. 이름 출력
  final hong = Person(name: '홍길동');
  final im = Person(name: '임꺽정');
  final persons = personService.makePersonsLists([hong, im]);

  persons.forEach((person) {
    print(person.name);
  });

  // PRACTICE 03. 이름 + 나이 출력
  final hongWithAge = Person(name: '홍길동', age: 15);
  final imWithAge = Person(name: '임꺽정', age: 20);

  final personMap = personService.makePersonMap([
    hongWithAge,
    imWithAge
  ]);

  personMap.forEach((name, age) {
    print('$name의 나이는 $age');
  });
}