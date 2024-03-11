import 'package:learn_dart_together/24_03_11/02_person.dart';
import 'package:test/test.dart';

void main() {
  // test('description', body() { });   <- test code 형식
  test('test', () {
    // given (준비)
    Person hong = Person('홍길동', 1990);

    // when (실행)

    // then (검증)
    expect(hong.age, 0);
  });
}
