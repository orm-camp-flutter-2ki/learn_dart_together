import 'package:learn_dart_together/240311/encapsulation/person.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard Test', () {
    Person person = Person('박세훈', 2001);
    print(person.age);
  });
}