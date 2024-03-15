import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('book Test', () {
    Book book = Book(
      title: '논어',
      comment: '인생은 흘러가는것',
      publishDate: DateTime(2024, 1, 1),
    );
    Book book2 =
        Book(title: '논어', comment: '삶', publishDate: DateTime(2024, 1, 1));
    print(book.publishDate);

    print(book == book2);
  });
}
