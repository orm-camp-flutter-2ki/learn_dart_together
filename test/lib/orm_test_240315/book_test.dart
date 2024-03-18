import 'package:learn_dart_together/orm_240315/book.dart';
import 'package:test/test.dart';

void main() {
  test(' 제목과 출간일(2024-01-01)이 같으면 같은책으로 판단한다.', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment');

    // expect(book == book2, true);
    book.publishDate = DateTime(2024, 10, 10);
    book2.publishDate = DateTime(2024, 10, 10);
    expect(book == book2, true);
    final Set<Book> books = {
      book,
      book2,
    };
    expect(books.length, 1);
  });
  test('book 인스턴스를 담고 있는 컬렉션에 대해 sort() 수행하여 출간일이 오래된 순서대로 정렬하라', () {
    Book book = Book(
        title: 'old', comment: 'comment', publishDate: DateTime(2024, 10, 10));
    Book book2 = Book(
        title: 'new', comment: 'comment', publishDate: DateTime(2023, 10, 10));

    final bookss = [book, book2];
    final sortbook = [book2, book];
    bookss.sort();

    expect(bookss == sortbook , true);
  });
}