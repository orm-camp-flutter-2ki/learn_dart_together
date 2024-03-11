import 'package:dart_cli_practice/240311/person.dart';
import 'package:test/test.dart';

void main() {
  test('person birth year test failure case', () {
    // give
    Person person = Person('한석봉', 1999);

    // when, then
    expect(person.age, equals(DateTime.now().year + 1 - person.birthYear));
  });

  test('person birth year test success case', () {
    // give
    Person person = Person('한석봉', 1999);

    // when, then
    expect(person.age, equals(DateTime.now().year - person.birthYear));
  });
}