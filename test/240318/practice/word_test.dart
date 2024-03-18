import 'package:dart_cli_practice/240318/practice/word.dart';
import 'package:test/test.dart';

void main() {
  // setup
  Word word = Word();
  word.word = 'Lorem ipsum dolor sit amet';

  group('주어진 문자열에서', () {
    test('양수 인덱스로 해당하는 위치의 문자가 모음인지 검사', () {
      expect(word.isVowel(1), true);
    });

    test('음수 인덱스로 해당하는 위치의 문자가 모음인지 검사', () {
      expect(word.isVowel(-3), false);
    });

    test('양수 인덱스로 해당하는 위치의 문자가 자음인지 검사', () {
      expect(word.isConsonant(0), true);
    });

    test('음수 인덱스로 해당하는 위치의 문자가 자음인지 검사', () {
      expect(word.isConsonant(-1), true);
    });
  });
}