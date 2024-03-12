import 'package:test/test.dart';


void main() {
  test('Person Test First', () {
    Person person = Person(name: '홍길동');
    Person person2 = Person(name: '한석봉');

    List<Person> people = [person, person2];
    for (Person item in people) {
      print(item.name);
    }
  });

  test('Person Test Second', () {
    Person person = Person(name: '홍길동', age: 20);
    Person person2 = Person(name: '한석봉', age: 25);

    List<Map<String, dynamic>> people = [];
    people.add(person.toMap());
    people.add(person2.toMap());

    for (var element in people) {
      print('${element['name']}의 나이는 ${element['age']}살');
    }
  });
}
class Person {
  String name;
  int? age;

  Person({required this.name, this.age});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age
    };
  }
}