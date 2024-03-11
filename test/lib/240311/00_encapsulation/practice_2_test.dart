import 'package:learn_dart_together/240311/00_encapsulation/practice_2/practice_2.dart';
import 'package:test/test.dart';

void main() {
  test('Person test', () {

    final person = Person(name: '나오리', birthYear: 2006);
    person.myAge(person.birthYear);
    print(person.age);
  });
}