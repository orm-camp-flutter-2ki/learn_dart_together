import 'dart:math';

import 'package:learn_dart_together/240318/practice_string.dart';
import 'package:test/test.dart';

void main() {
  // 영어 모음: a, e, i, o, u
  group('i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오', () {

    int i = 5;

    test('i 번째 글자가 주어진 단어 글자 수 보다 클 경우 false 가 반환된다.', () {

      Word word = Word('word');
      bool result = word.isVowel(i);

      // 검증
      expect(result, false);
    });

    test('i 번째 글자가 모음이면 true 가 반환된다.', () {

      Word word = Word('generate');
      bool result = word.isVowel(i);

      // 검증
      expect(result, true);
    });
  });


  group('i 번째 글자가 자음인지 알려주는 isVowel() 함수를 완성하시오', () {

    int i = 6;

    test('i 번째 글자가 주어진 단어 글자 수 보다 클 경우 false 가 반환된다.', () {

      Word word = Word('chair');
      bool result = word.isConsonant(i);

      // 검증
      expect(result, false);
    });

    test('i 번째 글자가 자음이면 true 가 반환된다.', () {

      Word word = Word('generate');
      bool result = word.isConsonant(i);

      // 검증
      expect(result, true);
    });
  });
}