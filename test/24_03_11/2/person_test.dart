import 'package:learn_dart_together/24_03_11/2/person.dart';
import 'package:test/test.dart';

void main() {
  test('손흥민과 이강인의 탁구 한 판~!! 🏓', () {
    // give
    Person person = Person('이강인', 2002);

    // when, then
    expect(person.age, equals(DateTime.now().year + 1 - person.birthYear));
  });

  test('person birth year test success case', () {
    // give
    Person person = Person('손흥민', 1994);

    // when, then
    expect(person.age, equals(DateTime.now().year - person.birthYear));
  });
}