import 'package:learn_dart_together/24_03_15/practice_240315.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Book class test', () {
    // 1.
    test('제목과 출판일이 같으면 같은 책으로 판단, return true', () {
      // given when
      Book book = Book(
          title: 'abc', comment: 'abc', publishDate: DateTime(2015, 9, 10));

      Book book1 = Book(
          title: 'abc', comment: 'cba', publishDate: DateTime(2015, 9, 10));

      // then
      expect(book == book1, equals(true));
    });

    // 2.
    test('Book instance들을 담은 컬렉션 sort() 시 출간일이 오래 된 순서로 정렬', () {
      // given
      Book book = Book(
          title: 'abc', comment: 'abc', publishDate: DateTime(2015, 9, 10));

      Book book1 = Book(
          title: 'abc', comment: 'cba', publishDate: DateTime(2015, 10, 10));

      Book book2 = Book(
          title: 'def', comment: 'def', publishDate: DateTime(2014, 9, 10));

      Book book3 = Book(
          title: 'ghi', comment: 'ghi', publishDate: DateTime(2013, 12, 20));

      Book book4 = Book(
          title: 'jkl', comment: 'jkl', publishDate: DateTime(2016, 7, 17));

      // when

      List<Book> books = [book, book1, book2, book3, book4];
      books.sort((a, b) => a.publishDate.compareTo(b.publishDate));
      // then

      expect(books, equals([book3, book2, book, book1, book4]));
    });

    test('deep copy를 위한 copyWith method', () {
      // given
      Book book = Book(
          title: 'abc', comment: 'abc', publishDate: DateTime(2015, 9, 10));

      bool isContentsSame(Book inst1, Book inst2) {
        if (inst1.title != inst2.title) {
          return false;
        }

        if (inst1.comment != inst2.comment) {
          return false;
        }

        if (inst1.publishDate != inst2.publishDate) {
          return false;
        }

        return true;
      }

      // when
      Book book1 = book.copyWith();

      // then
      expect(isContentsSame(book, book1), equals(true));
    });
  });
}
