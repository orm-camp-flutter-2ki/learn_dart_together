import 'package:learn_dart_together/24_03_18/-2/word.dart';
import 'package:test/test.dart';

void main() {
  group('Word 클래스', () {
    Word? word;
    setUp(() => word = Word(word: 'word'));
    tearDown(() => word = null);
    group('isVowel 메소드는', () {
      test('문자열의 특정 인덱스가 aeiou에 속할경우 true를 반환한다.', () {
        // Given
        final index = 1;

        // When
        final result = word!.isVowel(index);

        // Then
        expect(result, isTrue);
      });

      test('문자열의 특정 인덱스가 aeiou에 속하지 않을경우 false를 반환한다.', () {
        // Given
        final index = 0;

        // When
        final result = word!.isVowel(index);

        // Then
        expect(result, isFalse);
      });

      test('문자열의 특정 인덱스가 가지고있는 문자열의 크기보다 클경우 RangeError를 던진다.', () {
        // Given When Then
        expect(()=>word!.isVowel(6), throwsA(predicate((e) => e is RangeError)));
      });

      test('문자열의 특정 인덱스를 음수로 지정하면 RangeError를 던진다.', () {
        // Given When Then
        expect(()=>word!.isVowel(-1), throwsA(predicate((e) => e is RangeError)));
      });
    });

    group('isConsonant 메소드는', () {
      test('문자열의 특정 인덱스가 aeiou에 속할경우 false를 반환한다.', () {
        // Given
        final index = 1;

        // When
        final result = word!.isConsonant(index);

        // Then
        expect(result, isFalse);
      });

      test('문자열의 특정 인덱스가 aeiou에 속하지 않을경우 true를 반환한다.', () {
        // Given
        final index = 0;

        // When
        final result = word!.isConsonant(index);

        // Then
        expect(result, isTrue);
      });

      test('문자열의 특정 인덱스가 가지고있는 문자열의 크기보다 클경우 RangeError를 던진다.', () {
        // Given When Then
        expect(()=>word!.isConsonant(6), throwsA(predicate((e) => e is RangeError)));
      });

      test('문자열의 특정 인덱스를 음수로 지정하면 RangeError를 던진다.', () {
        // Given When Then
        expect(()=>word!.isConsonant(-1), throwsA(predicate((e) => e is RangeError)));
      });
    });
  });
}
