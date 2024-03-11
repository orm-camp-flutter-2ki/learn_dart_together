import 'package:learn_dart_together/240311/collection/person.dart';
import 'package:test/test.dart';

void main() {
  test('Person Test', () {
    Person person = Person('박세훈');
    Person person2 = Person('한석봉');

    List<Person> people = [person, person2];
    for (Person item in people) {
      print(item.name);
    }
  });
}