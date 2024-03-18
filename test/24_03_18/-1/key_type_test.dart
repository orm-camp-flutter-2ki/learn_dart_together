import 'package:learn_dart_together/24_03_18/-1/key_type.dart';
import 'package:test/test.dart';

void main() {
  group('KeyType enum', () {
    group('get value 메소드는', () {
      test('객체가 padlock일경우 정수 1024를 반환한다,', () {
        // Given
        final int expected = 1024;

        // When
        final result = KeyType.padlock.value;

        // Then
        expect(result, equals(expected));
      });

      test('객체가 button일경우 정수 100000를 반환한다,', () {
        // Given
        final int expected = 10000;

        // When
        final result = KeyType.button.value;

        // Then
        expect(result, equals(expected));
      });

      test('객체가 dial일경우 정수 30000를 반환한다,', () {
        // Given
        final expected = 30000;

        // When
        final result = KeyType.dial.value;

        // Then
        expect(result, equals(expected));
      });

      test('객체가 finger일경우 정수 1000000를 반환한다,', () {
        // Given
        final int expected = 1000000;

        // When
        final result = KeyType.finger.value;

        // Then
        expect(result, equals(expected));
      });
    });
  });
}
