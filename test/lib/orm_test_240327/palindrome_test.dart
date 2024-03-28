import 'package:learn_dart_together/orm_240327/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('palindrome 화문 구별 true', () async {
    final word = 'level';
    final result = word.isPalindrome();

    expect(result, true);
  });
  test('palindrome 화문 구별 false', () async {
    final word = 'level2';
    final result = word.isPalindrome();

    expect(result, false);
  });
}
