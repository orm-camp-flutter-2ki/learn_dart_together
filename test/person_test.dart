
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
  });
}