import 'package:learn_dart_together/240311/person_capsule.dart';
import 'package:test/test.dart';

void main() {
  test('Person(collection) test(연습문제2, 3)', () {
    Person person = Person('펭수', 2010);
    print('${person.name}의 나이는 ${person.age}이다');
  });
}
