import 'package:test/test.dart';

import 'package:learn_dart_together/240315/book_collection.dart';

void main() {
  test('book Test', () {
    List<Book> bookList = [
      Book(title: '논어', comment: '삶', publishDate: DateTime(2024, 1, 1)),
      Book(title: '논어', comment: '삶', publishDate: DateTime(2025, 1, 1)),
      Book(title: '논어', comment: '삶', publishDate: DateTime(2028, 1, 1)),
      Book(title: '논어', comment: '삶', publishDate: DateTime(2004, 1, 1)),
    ];
    bookList.sort((a, b) => a.compareTo(b));

    bookList.forEach((book) {
      print("${book.title} - ${book.publishDate}");
    });
  });
}
