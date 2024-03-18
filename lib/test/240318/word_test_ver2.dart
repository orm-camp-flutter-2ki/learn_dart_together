import 'package:test/test.dart';
import 'package:learn_dart_together/240318/word_ver2.dart';

void main() {
  test('moem Test', () {
    WordVer2 word = WordVer2('banana');

    for (int i = 0; i < word.word.length; i++) {
      print('${word.word}의 모음은 ${word.isVowel(i)}');
    }
  });
  test('jaem Test', () {
    WordVer2 word = WordVer2('apple');
    for (int i = 0; i < word.word.length; i++) {
      print('${word.word}의 자음은 ${word.isConsonant(i)}');
    }
  });
}
