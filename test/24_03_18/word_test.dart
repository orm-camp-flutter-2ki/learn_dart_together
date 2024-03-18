import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/test.dart';

void main() {
  group('word 객체 메서드 테스트', () {
    Word word = Word(word: 'apple');

    test('vowel 메서드 테스트', () {
      //0번째 A 테스트
      expect(word.isVowel(0), true);
      //1번째 P 테스트
      expect(word.isVowel(1), false);
      //2번째 P 테스트
      expect(word.isVowel(2), false);
      //3번째 L 테스트
      expect(word.isVowel(3), false);
      //4번째 E 테스트
      expect(word.isVowel(4), true);
    });

    test('isConsonant 메서드 테스트', () {
      //0번째 A 테스트
      expect(word.isConsonant(0), false);
      //1번째 P 테스트
      expect(word.isConsonant(1), true);
      //2번째 P 테스트
      expect(word.isConsonant(2), true);
      //3번째 L 테스트
      expect(word.isConsonant(3), true);
      //4번째 E 테스트
      expect(word.isConsonant(4), false);
    });
  });
}
