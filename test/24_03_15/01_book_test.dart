
import 'package:learn_dart_together/24_03_15/01_book.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Book class', () {
    // 제목과 출간일 비교
    test('제목 출간일 비교', () {
      // give
      Book book1 = Book(
          title: '쇼펜하우어', comment: '원본', publishDate: DateTime(24 - 12 - 12));

      // when
      Book book2 = Book(
          title: '불변의 법칙', comment: '복사본', publishDate: DateTime(23 - 04 - 05));

      // then
      expect(book1 == book2, true);
      print(book1);
      print(book2);
    });

    // sort()를 이용하여 오래된 순서대로 정렬
    test('sort()를 이용하여 오래된 순서대로 정렬', () {
      // give
      Book book1 = Book(
          title: '쇼펜하우어', comment: '좋아요', publishDate: DateTime(24 - 12 - 12));
      Book book2 = Book(
          title: '불변의 법칙', comment: '최고', publishDate: DateTime(23 - 04 - 05));
      Book book3 = Book(
          title: '데일 카네기', comment: '추천', publishDate: DateTime(22 - 03 - 02));

      // when
      List<Book> bookList1 = [book1, book2, book3];
      List<Book> bookList2 = [book1, book2, book3];
      bookList1.sort((a, b) => a.compareTo(b));

      // then
      expect(bookList2 != bookList1, true);
      print(bookList2); // sortedBook
      print(bookList1); // bookList
    });

    //deep copy확인 테스트코드
    test('deep copy 확인', () {
      // give
      Book book1 = Book(
          title: '쇼펜하우어', comment: '원본', publishDate: DateTime(24 - 12 - 12));

      // when
      Book book2 = Book(
          title: '불변의 법칙', comment: '복사본', publishDate: DateTime(23 - 04 - 05));

      // then
      expect(identical(book1, book2), false);
      print('$book1 과 $book2는 같지 않음');
    });
  });
}
