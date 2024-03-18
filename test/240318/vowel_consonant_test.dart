import 'package:test/test.dart';
import 'package:learn_dart_together/240318/vowel_consonant.dart';

void main() {
  // given (준비)
  Word word = Word('Hippo');

  group('Test', () {
    test('모음', () {
      // 모음
      expect(word.isVowel(0), equals(false));
      expect(word.isVowel(1), equals(true));
      expect(word.isVowel(2), equals(false));
      expect(word.isVowel(3), equals(false));
      expect(word.isVowel(4), equals(true));
    });

    test('자음', () {
      // 자음
      expect(word.isConsonant(0), equals(true));
      expect(word.isConsonant(1), equals(false));
      expect(word.isConsonant(2), equals(true));
      expect(word.isConsonant(3), equals(true));
      expect(word.isConsonant(4), equals(false));
    });
  });
}