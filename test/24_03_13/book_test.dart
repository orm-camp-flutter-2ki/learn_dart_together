import 'package:learn_dart_together/24_03_13/book.dart';
import 'package:test/test.dart';

void main() {
  group('Book 클래스', () {
    Book? book;
    setUp(() => book = Book(
        name: '안녕',
        price: 10000,
        color: '검정색',
        weight: 0.5,
        isbn: '1234567890'));
    tearDown(() => book = null);

    group('generateDescription 메소드는', () {
      test('자신을 소개하는 문자열을 리턴한다.', () {
        // Given
        String expected = '이번에 소개할 책은 안녕입니다. 가격은 10000원이며, 색상은 '
            '검정색입니다. 무게는 0.5이며, ISBN은 1234567890입니다.';

        // When
        String result = book!.generateDescription();

        // Then
        expect(result, equals(expected));
      });
    });

    group('set weight 메소드에 double 인자를 넣어서 호출하면', () {
      test('weight 값을 변경한다', () {
        // Given
        double expected = 3.3;

        // When
        book!.weight = expected;

        // Then
        expect(book!.weight, equals(expected));
      });
    });
  });
}
