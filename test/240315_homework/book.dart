import 'package:learn_dart_together/240315_homework/book.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment');

    book.publishDate = DateTime(2024, 10, 10, 1);
    book2.publishDate = DateTime(2024, 10, 10, 2);

    expect(book == book2, true);

    final Set<Book> books = {
      book,
      book2,
    };

    expect(book == book2, true);
  });

  test('Book 인스턴스를 담고 있는 컬렉션', () {
    Book book = Book(
        title: 'young title',
        comment: 'comment',
        publishDate: DateTime(2023, 10, 10));
    Book book2 = Book(
        title: 'old title',
        comment: 'comment',
        publishDate: DateTime(2023, 10, 10));

    final books = [book, book2];
    final sortedBooks = [book2, book];

    books.sort();

    expect(books.first.title == sortedBooks.first.title, true);
  });

  test('딥카피', () {
    final book = Book(title: 'title', comment: 'comment');
    final book2 = book.copyWith();

    expect(book == book2, true);

    final book3 = book.copyWith(title: 'change');

    expect(book3.title == 'change', true);
    expect(book3.publishDate == book.publishDate, true);
    expect(book3.comment == book.comment, true);
  });
}
