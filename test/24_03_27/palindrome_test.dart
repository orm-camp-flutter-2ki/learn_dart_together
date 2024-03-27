import 'package:learn_dart_together/24_03_27/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('true 테스트', () {
    expect(palindrome('racecar'), isTrue);
  });

  test('false 테스트', () {
    expect(palindrome('hello'), isFalse);
  });
}
