import 'package:dart_cli_practice/240315/practice/book.dart';
import 'package:test/test.dart';

void main() {
  Book book1 = Book(
    title: '백과사전',
    comment: '백과사전',
    publishDate: DateTime(2024, 3, 15),
  );
  Book book2 = Book(
    title: '판타지소설',
    comment: '판타지소설',
    publishDate: DateTime(2024, 7, 5),
  );

  Book book3 = Book(
    title: '교양서적',
    comment: '교양서적',
    publishDate: DateTime(2024, 1, 28),
  );

  Book book4 = Book(
    title: '참고서',
    comment: '참고서',
    publishDate: DateTime(2024, 10, 30),
  );

  Book book5 = Book(
    title: '수필',
    comment: '수필',
    publishDate: DateTime(2024, 5, 5),
  );

  group('Book Class', () {
    test('Expects equal when have same name and publish date', () {
      // give
      Book anotherBook = Book(
          title: '백과사전',
          comment: '다른 백과사전입니다.',
          publishDate: DateTime(2024, 3, 15));

      //when

      //then
      expect(book1, equals(anotherBook));
    });

    test('Expects not equal when have same name or publish date', () {
      // give
      Book anotherBook = Book(
          title: '백과사전',
          comment: '다른 백과사전입니다.',
          publishDate: DateTime(2024, 3, 10));

      //when

      //then
      expect(book1, isNot(equals(anotherBook)));
    });

    test('Sort by oldest publication date.', () {
      // give
      List<Book> originalBookList = [book3, book1, book5, book2, book4];

      // when
      List<Book> bookList = [book1, book2, book3, book4, book5];
      // Comparable interface 구현
      bookList.sort(
        (prev, next) => prev.compareTo(next),
      );

      // Comparator 함수 구현
      bookList.sort(
        (prev, next) => prev.publishDate.compareTo(next.publishDate),
      );

      // then
      expect(originalBookList, equals(bookList));
    });

    test('Support copyWith Method for deep copying', () {
      // give
      Book originalBook = Book(
          title: '원조', comment: '얘가 진짜임', publishDate: DateTime(2024, 3, 15));

      // when
      Book copiedBook = originalBook.copyWith(
          title: '원조', comment: '얘는 복사본임', publishDate: DateTime(2024, 3, 15));

      // then
      expect(identical(originalBook, copiedBook), false);
      // print('[$originalBook] 와/과 \n[$copiedBook] 은/는 같지 않음');
    });
  });
}
