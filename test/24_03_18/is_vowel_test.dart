import 'package:learn_dart_together/24_03_18/is_vowel.dart';
import 'package:test/test.dart';

void main() {
  group('Word', () {
    Word testWord = Word();
    testWord.word = 'Metallica';

    test('isVowel', () {
      expect(testWord.isVowel(0), equals(false));
      expect(testWord.isVowel(1), equals(true));
      expect(testWord.isVowel(2), equals(false));
      expect(testWord.isVowel(3), equals(true));
      expect(testWord.isVowel(4), equals(false));
      expect(testWord.isVowel(5), equals(false));
      expect(testWord.isVowel(6), equals(true));
      expect(testWord.isVowel(7), equals(false));
      expect(testWord.isVowel(8), equals(true));
    });

    test('isConsonant', () {
      expect(testWord.isConsonant(0), equals(true));
      expect(testWord.isConsonant(1), equals(false));
      expect(testWord.isConsonant(2), equals(true));
      expect(testWord.isConsonant(3), equals(false));
      expect(testWord.isConsonant(4), equals(true));
      expect(testWord.isConsonant(5), equals(true));
      expect(testWord.isConsonant(6), equals(false));
      expect(testWord.isConsonant(7), equals(true));
      expect(testWord.isConsonant(8), equals(false));
    });
  });
}