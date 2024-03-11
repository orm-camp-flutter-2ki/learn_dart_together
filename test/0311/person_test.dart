import 'package:learn_dart_together/0311/person.dart';
import 'package:test/test.dart';

void main() {
  final Person person = Person('이사람', 1900);
  
  test('Person 인스턴스 생성', () {
    expect(person.birthYear, equals(1900));
  });

  test('현재 나이와 일치', () {
    expect(person.age, equals(124));  // 2024년 124세
  });
}