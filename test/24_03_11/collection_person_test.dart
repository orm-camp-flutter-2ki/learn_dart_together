import 'package:learn_dart_together/24_03_11/collection_person.dart';
import 'package:test/test.dart';

void main() {
  group('collection 연습문제 person 클래스', () {
    test('리스트에 담았다가 순차적으로 name 출력 및 Map에 담고 ~의 나이는 ~살 출력', () {
      // Given
      List<Person> persons = [
        Person(name: '홍길동', age: 20),
        Person(name: '한석봉', age: 25),
      ];
      Map<String, Person> map = {};
      // When
      for (var element in persons) {
        print(element.name);
        map[element.name] = element;
      }

      for (var element in map.entries) {
        print('${element.value.name}의 나이는 ${element.value.age}살');
      }

      // Then
      expect(persons[0].name, equals(map[persons[0].name]?.name));
      expect(persons[1].name, equals(map[persons[1].name]?.name));
    });
  });
}
