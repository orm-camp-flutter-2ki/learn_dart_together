import 'package:test/test.dart' show equals, expect, test;
import 'package:learn_dart_together/240315/book.dart';

void main() {
  test('Book Test', () {

    // given (준비)
    List<Book> books = [
      Book(
          title: 'Must Have 코드팩토리의 플러터 프로그래밍 2판',
          publishDate: DateTime(2024, 2, 1),
          comment: ''),
      Book(
          title: '개발이 재미있는 플러터 앱 프로그래밍',
          publishDate: DateTime(2023, 8, 7),
          comment: ''),
      Book(
          title: '오준석의 플러터 생존 코딩',
          publishDate: DateTime(2021, 5, 28),
          comment: ''),
    ];

    // 테스트코드 1. 출간일이 오래된 순으로 정렬되었는지 확인
    // when(실행)
    books.sort();
    // then(검증)
    expect(books[0].title, equals('오준석의 플러터 생존 코딩'));

    // 테스트코드 2. 동등성 비교 확인
    // when(실행)
    Book junsukBook = books[0];
    Book shallowCopiedBook = junsukBook;
    Book deepCopiedBook = junsukBook.copyWith(comment: '(사인 포함)'); // deepcopy한 객체는 기존 객체와 동등성 비교(==) 재정의 않으면 false가 됨
    // then(검증)
    expect(junsukBook==deepCopiedBook, equals(true)); // 동등성 비교 재정의 하였으므로 제목과 출간일이 같으면 같은 객체로 판단
  });
}
