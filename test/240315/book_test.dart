import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/inn.dart';
import 'package:learn_dart_together/240307/wand.dart';
import 'package:learn_dart_together/240307/wizard.dart';
import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment');

    book.publishDate = DateTime(2024, 10, 10, 1);
    book2.publishDate = DateTime(2024, 10, 10, 2);

    // title하고 년월일만 비교
    expect(book == book2, true);

    final Set<Book> books = {
      book,
      book2,
    };

    expect(books.length, 1);
  });

  test('Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.', () {
    Book book = Book(
      title: 'young title',
      comment: 'comment',
      publishDate: DateTime(2024, 10, 10),
    );
    Book book2 = Book(
      title: 'old title',
      comment: 'comment',
      publishDate: DateTime(2023, 10, 10),
    );

    final books = [book, book2];
    final sortedBooks = [book2, book];

    books.sort();

    expect(books.first.title == sortedBooks.first.title, true);
  });

  test('deep copy 가 잘 되는가', () {
    final book = Book(title: 'title', comment: 'comment');
    final book2 = book.copyWith();

    // 복사 잘 됨
    expect(book == book2, true);

    // title 복사
    final book3 = book.copyWith(title: 'change');
    expect(book3.title == 'change', true);
    expect(book3.publishDate == book.publishDate, true);
    expect(book3.comment == book.comment, true);
  });
}
