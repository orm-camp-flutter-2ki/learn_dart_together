import 'dart:js_util';

import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:test/test.dart';

void main() {
  group('Book 클래스', () {
    Book? book;
    setUp(() => book =
        Book(title: '제목', comment: '코멘트', publishDate: DateTime(2022, 1, 1)));
    tearDown(() => book = null);
    group('hashCode 메소드는', () {
      test('객체의 title과 publishDate를 이용해서 해시코드를 생성해서 반환한다.', () {
        // Given
        final expected =
            book!.title.hashCode ^ book!.publishDateFormatted.hashCode;

        // When
        final result = book!.hashCode;

        // Then
        expect(result, equals(expected));
      });
    });

    group('operator == 메소드는', () {
      test('객체의 title과 publishDate가 같으면 true를 반환한다.', () {
        // Given
        final other = Book(
            title: '제목', comment: '코멘트', publishDate: DateTime(2022, 1, 1));

        // When
        final result = book == other;

        // Then
        expect(result, isTrue);
      });

      test('객체의 title과 publishDate가 다르면 false를 반환한다.', () {
        // Given
        final other = Book(
            title: '제목2', comment: '코멘트', publishDate: DateTime(2022, 1, 1));

        // When
        final result = book == other;

        // Then
        expect(result, isFalse);
      });

      test('갖고있는 속성은 같더라도 타입이 다르면 false를 반환한다.', () {
        // Given
        final other = {
          'title': '제목',
          'comment': '코멘트',
          'publishDate': DateTime(2022, 1, 1)
        };

        // When
        final result = book == other;

        // Then
        expect(result, isFalse);
      });
    });

    group('copyWith 메소드는', () {
      test('인자로 넘어온 값이 없으면 객체 자신과 똑같은 값을 가진 Book 객체를 새로 생성해서 반환한다.', () {
        // Given
        final expected = book;

        // When
        Book result = book!.copyWith();

        // Then
        expect(result, equals(expected));
      });

      test('인자로 넘어온 값이 있다면 해당 속성만 변경해서 Book 객체를 새로 생성해서 반환한다.', () {
        // Given
        final expected = book;

        // When
        Book result = book!.copyWith(title: '제목2');

        // Then
        expect(result, isNot(equals(expected)));
        expect(result.title, equals('제목2'));
      });
    });

    group('compareTo 메소드는', () {
      test('객체의 publishDate를 이용해서 비교해서 this가 오래된 날짜를 갖고있을 경우 -1을 반환한다.', () {
        // Given
        final other = Book(
            title: '제목', comment: '코멘트', publishDate: DateTime(2022, 1, 2));

        // When
        final result = book!.compareTo(other);

        // Then
        expect(result, equals(-1));
      });
    });
  });
}
