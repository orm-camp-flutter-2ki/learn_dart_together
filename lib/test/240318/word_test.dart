import 'package:test/test.dart';
import 'package:learn_dart_together/240318/word.dart';

void main() {
  test('moem Test', () {
    Word word = Word();
    word.word = 'banana';

    for (int i = 0; i < word.word.length; i++) {
      print('${word.word}의 모음은 ${word.isVowel(i)}');
    }
  });
  test('jaem Test', () {
    Word word = Word();
    word.word = 'APPLE';
    for (int i = 0; i < word.word.length; i++) {
      print('${word.word}의 자음은 ${word.isConsonant(i)}');
    }
  });
}
