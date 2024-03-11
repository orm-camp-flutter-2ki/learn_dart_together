import 'package:learn_dart_together/24_03_11/person_encapsulation.dart';
import 'package:test/test.dart';

void main() {
  test('age test', () {
    // given when
    Person newPerson = Person('홍길동', 1992);

    // then
    expect(newPerson.age, equals(32));
  });
}
