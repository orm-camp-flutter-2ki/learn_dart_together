import 'package:dart_cli_practice/240315/practice/book.dart';
import 'package:test/test.dart';

void main() {
  //


  group('Book Class', () {
    test('Expects equal when have same name and publish date', () {
      // give
      Book book1 = Book(
          title: '백과사전1',
          comment: '백과사전입니다.',
          publishDate: DateTime(2024, 3, 15));

      //when
      Book book2 = Book(
          title: '백과사전1',
          comment: '다른 백과사전입니다.',
          publishDate: DateTime(2024, 3, 15));

      //then
      expect(book1 == book2, true);
      print(book1);
      print(book2);
    });

    test('Expects not equal when have same name or publish date', () {
      // give
      Book book1 = Book(
          title: '백과사전',
          comment: '백과사전입니다.',
          publishDate: DateTime(2024, 3, 15));

      //when
      Book book2 = Book(
          title: '백과사전',
          comment: '다른 백과사전입니다.',
          publishDate: DateTime(2024, 3, 10));

      //then
      expect(book1 != book2, true);
      print(book1);
      print(book2);
    });

    test('Sort by oldest publication date.', () {
      // give
      Book book1 = Book(
          title: '백과사전',
          comment: '백과사전',
          publishDate: DateTime(2024, 3, 15));
      Book book2 = Book(
          title: '판타지소설',
          comment: '판타지소설',
          publishDate: DateTime(2024, 7, 5));

      Book book3 = Book(
          title: '교양서적',
          comment: '교양서적',
          publishDate: DateTime(2024, 1, 28));

      Book book4 = Book(
          title: '참고서',
          comment: '참고서',
          publishDate: DateTime(2024, 10, 30));

      Book book5 = Book(
          title: '수필',
          comment: '수필',
          publishDate: DateTime(2024, 5, 5));

      // when
      List<Book> bookList = [book1, book2, book3, book4, book5];
      List<Book> sortedBookList = [book1, book2, book3, book4, book5];
      sortedBookList.sort((prev, next) => prev.compareTo(next)); // Comparable interface 구현

      // sortedBookList.sort((prev, next) => prev.publishDate.compareTo(next.publishDate)); // Comparator 함수 구현

      // then
      for(final book in sortedBookList) {
        print(book);
      }

      print('');

      for(final book in bookList) {
        print(book);
      }
    });

    test('Support copyWith Method for deep copying', () {
      // give
      Book originalBook = Book(title: '원조', comment: '얘가 진짜임', publishDate: DateTime(2024, 3, 15));

      // when
      Book copiedBook = originalBook.copyWith(title: '원조', comment: '얘는 복사본임', publishDate: DateTime(2024, 3, 15));

      // then
      expect(identical(originalBook, copiedBook), false);
      print('[$originalBook] 와/과 \n[$copiedBook] 은/는 같지 않음');
    });
  });
}
