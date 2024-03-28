import 'package:learn_dart_together/24_03_27/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('palindrome test', () {
    bool result = palindrome('abcd');
    expect(result, true);
  });

  test('palindrome test', () {
    bool result = palindrome('aabaa');
    expect(result, true);
  });
}