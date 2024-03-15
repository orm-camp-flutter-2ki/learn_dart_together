import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('homeWorkTest', () {
    Book book = Book(title: '플러터', comment: '플러터');
    Book book2 = Book(title: '플러터', comment: '플러터');

    expect(book == book2, equals(true));

    DateTime today = DateTime.now();
    DateTime yes1 = today.subtract(Duration(days: 1));
    DateTime yes2 = today.subtract(Duration(days: 2));
    DateTime yes3 = today.subtract(Duration(days: 3));

    Book book3 = Book(title: '플러터', comment: '플러터', publishDate: yes1);
    Book book4 = Book(title: '플러터', comment: '플러터', publishDate: yes2);
    Book book5 = Book(title: '플러터', comment: '플러터', publishDate: yes3);

    List<Book> Books = [book3, book4, book5];
    Books.sort();

    for (Book book in Books) {
      print(book.publishDate);
    }

    Book book6 = Book(title: '플러터1', comment: '플러터1');
    Book book7 = book6.copyWith();

    expect(identical(book6, book7), equals(false));
  });
}
