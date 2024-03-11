
import 'package:learn_dart_together/240309/person.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

main() {
  final personService = PersonService();

  group('PersonService', () {
    test('makePersonLists에 두 값을 담은 리스트를 구현했을 때 정상적인 리스트가 반환되는가', () {
      // given
      final flutter = Person(name: '플러터');
      final swift = Person(name: '스위프트');

      // when
      final persons = personService.makePersonsLists([flutter, swift]);

      // then
      expect(persons, [flutter, swift]);
    });

    test('makePersonMap에 들어갈 Person의 나이가 null일 때 예외처리되는가', () {
      // given
      final optionalPerson = Person(name: '난널러블', age: null);

      // when then
      expect(
          () => personService.makePersonMap([optionalPerson]), throwsException);
    });

    test('makePersonMap에 두 값을 담은 맵을 구현했을 때 정상적인 맵이 반환되는가', () {
      // given
      final hongWithAge = Person(name: '홍길동', age: 20);
      final imWithAge = Person(name: '임꺽정', age: 30);

      // when
      final personData = personService.makePersonMap([
        hongWithAge,
        imWithAge
      ]);

      expect(personData, {
      '홍길동': 20,
      '임꺽정': 30
      });
    });
  });
}