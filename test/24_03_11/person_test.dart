import 'package:learn_dart_together/24_03_11/person.dart';
import 'package:test/test.dart';

void main() {
  group('person 클래스', () {
    test('생성자는 name과 birthYear를 받으면 생성한다.', () {
      // Given
      String name = '성종호';
      int birthYear = 1993;

      // When
      Person person = Person(name: name, birthYear: birthYear);

      // Then
      expect(person, isNotNull);
    });

    test('age를 호출하면 현재 년도에 태어난 년도를 빼서 나이를 알려준다.', () {
      // Given
      String name = '성종호';
      int birthYear = 1993;

      // When
      Person person = Person(name: name, birthYear: birthYear);

      // Then
      expect(person.age, equals(DateTime.now().year - birthYear));
    });
  });
}