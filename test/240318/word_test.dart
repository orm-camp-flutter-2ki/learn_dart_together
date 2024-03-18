import 'package:learn_dart_together/240318/word.dart';
import 'package:test/test.dart';

void main() {
  group('Word', () {
    test('isVowel() test', () {
      String word = 'apple';
      Word w = Word(word);
      expect(w.isVowel(0), true);
      expect(w.isVowel(1), false);
      expect(w.isVowel(2), false);
      expect(w.isVowel(3), false);
      expect(w.isVowel(4), true);
    });
    test('isConsonant() test', () {
      String word = 'tomato';
      Word w = Word(word);
      expect(w.isConsonant(0), true);
      expect(w.isConsonant(1), false);
      expect(w.isConsonant(2), true);
      expect(w.isConsonant(3), false);
      expect(w.isConsonant(4), true);
      expect(w.isConsonant(5), false);
    });
  });
}
