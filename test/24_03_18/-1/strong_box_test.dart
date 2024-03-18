import 'package:learn_dart_together/24_03_18/-1/key_type.dart';
import 'package:learn_dart_together/24_03_18/-1/strong_box.dart';
import 'package:test/test.dart';

void main() {
  group('StrongBox 클래스', () {
    StrongBox<String>? strongBox;
    setUp(() => strongBox = StrongBox(key: KeyType.padlock));
    tearDown(() => strongBox = null);
    group('get 메소드는', () {
      test('호출 횟수가 _key의 value보다 낮다면 null을 반환한다.', () {
        // Given
        String item = 'item';
        strongBox!.put(item);

        // When
        final result = strongBox!.get();

        // Then
        expect(result, isNull);
      });

      test('호출 횟수가 _key의 value보다 높다면 _item을 반환한다.', () {
        // Given
        String item = 'item';
        strongBox!.put(item);

        // When
        for(int i = 0; i < KeyType.padlock.value; i++) {
          strongBox!.get();
        }

        // Then
        expect(strongBox!.get(), equals(item));
      });
    });
  });
}
