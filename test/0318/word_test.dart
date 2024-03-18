import 'package:learn_dart_together/0318/word.dart';
import 'package:test/test.dart';

void main() {
  Word word = Word('HELLO');

  test('모음 확인', () {
    expect(word.isVowel(0), false);
    expect(word.isVowel(1), true);
  });

  test('자음 확인', () {
    expect(word.isConsonant(0), true);
    expect(word.isConsonant(1), false);
  });
}