import 'package:learn_dart_together/24_03_15/instance.dart';
import 'package:test/test.dart';

void main() {
  test('제목과 출간일이 같으면 같은 책으로 판단', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment');

    // expect(book != book2, true);

    book.publishDate = DateTime(2024, 1, 10, 1);
    book2.publishDate = DateTime(2024, 1, 10, 2);

    expect(book == book2, true);

    final Set<Book> books = {
      book,
      book2,
    };

    expect(books.length, 1);
  });

  test('정렬', () {
    Book book = Book(
        title: 'young title',
        comment: 'comment',
        publishDate: DateTime(2024, 10, 10));
    Book book2 = Book(
        title: 'old title',
        comment: 'comment',
        publishDate: DateTime(2023, 10, 10));

    final books = [book, book2];
    final sortedBooks = [book2, book];
    books.sort();

    expect(books.first.title == sortedBooks.first.title, true);
  });

  test('deep copy 테스트', () {
    final book = Book(title: 'title', comment: 'comment');
    final book2 = book.copyWith();

    expect(book == book2, true);

    // title 복사
    final book3 = book.copyWith(title: 'change');

    expect(book3.title == 'change', true);
    expect(book3.title, equals('change'));
    expect(book3.publishDate == book.publishDate, true);
    expect(book3.comment == book.comment, true);
    expect(book3.title, isNot(equals('change')));
  });
}
