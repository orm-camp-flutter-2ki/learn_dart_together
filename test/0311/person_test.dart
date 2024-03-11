import 'package:learn_dart_together/0311/person.dart';
import 'package:test/test.dart';

void main() {
  final Person person = Person('이사람', 1900);
  final Person person2 = Person('홍길동', 2004);
  final Person person3 = Person('한석봉', 1999);

  test('Person 인스턴스 생성', () {
    expect(person.birthYear, equals(1900));
  });

  test('현재 나이와 일치', () {
    expect(person.age, equals(124));  // 2024년 124세
  });

  test('List', () {
    final list = <Person>[person2, person3];

    // for (Person p in list) {
    //   print(p.name);
    // }

    expect(list[0].name, '홍길동');
    expect(list[1].name, '한석봉');
  });

  test('Map', () {

  });
}