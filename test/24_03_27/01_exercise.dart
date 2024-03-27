import 'package:test/test.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/01_exercise.dart';

void main() {
  group('연습문제2', () {
    test('palindrom 여부 확인 test', () {
      final result = checkPalindrom('racecar');
      expect(result, true);
      final resultHello = checkPalindrom(('hello'));
      expect(resultHello, false);
    });
  });
}
