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

    bookList
        .sort((book1, book4) => book1.publishDate.compareTo(book4.publishDate));
    for (var element in bookList) {
      print(element.publishDate);
    }
  });
}
