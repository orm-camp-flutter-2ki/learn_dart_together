import 'package:learn_dart_together/240318/word/word.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('모음', () {
    Word word = Word('apple');

    expect(word.isVowel(0), true);
    expect(word.isVowel(1), false);
    expect(word.isVowel(2), false);
    expect(word.isVowel(3), false);
    expect(word.isVowel(4), true);

    word.word = 'aEiOU';

    expect(word.isVowel(0), true);
    expect(word.isVowel(1), true);
    expect(word.isVowel(2), true);
    expect(word.isVowel(3), true);
    expect(word.isVowel(4), true);

    word.word = 'bcdfghjklmnpqrstvwxyz';

    for (int i = 0; i < word.word.length; i++) {
      expect(word.isVowel(i), false);
    }

    for (int i = 0; i < word.word.length; i++) {
      expect(word.isConsonant(i), true);
    }
  });
}