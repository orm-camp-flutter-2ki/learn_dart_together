import 'package:learn_dart_together/orm_240327/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('palindrome 화문 구별', () async {
    Palindrome word = Palindrome('level');
    final result = word.isPalindrome();

    expect(result, true);
  });
}
