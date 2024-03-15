import 'package:test/test.dart';

import '../../240315/book.dart';

void main() {
  test('test name', () {
    Book book1 =
        Book(title: '군중심리', comment: '책1', publishDate: DateTime(2024, 01, 01));
    Book book2 = Book(
        title: '총, 균, 쇠', comment: '책2', publishDate: DateTime(2022, 01, 01));

    Book book3 = book1.copyWith();
    Book book4 = Book(title: '책책', comment: '책4');

    final books = <Book>[];
    books.add(book1);
    books.add(book2);
    books.add(book3);
    books.add(book4);

    books.sort((a, b) => -a.publishDate.compareTo(b.publishDate));
    print(books);

    expect(book1, equals(book3));
  });
}
