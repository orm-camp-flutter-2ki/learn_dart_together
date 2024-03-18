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
  });
}
