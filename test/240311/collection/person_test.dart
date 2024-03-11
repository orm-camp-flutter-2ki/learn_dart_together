import 'package:learn_dart_together/240311/collection/person.dart';
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

    for (Map<String, dynamic> element in people) {
      print("${element['name']}의 나이는 ${element['age']}살");
    }
  });
}
