import 'package:learn_dart_together/0315/book.dart';
import 'package:learn_dart_together/0315/fiction.dart';
import 'package:test/test.dart';

void main() {
  test('동등 비교 연산', () {
    Book book = Book(title: 'title', comment: 'comment');
    Fiction fiction = Fiction(title: 'title', comment: 'comment');

    expect((book == fiction), true);

    book.publishDate = DateTime(2000);

    expect((book == fiction), false);
  });

  test('출간일이 오래된 순서대로 정렬', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment', publishDate: DateTime(3000));
    Fiction fiction = Fiction(title: 'title', comment: 'comment');
    List<Book> list = [book, book2, fiction];

    list.sort((a, b) {
      return b.getDate(b.publishDate).compareTo(a.getDate(a.publishDate));
    });

    for (var element in list) {
      print(element.getDate(element.publishDate));
    }
  });
}