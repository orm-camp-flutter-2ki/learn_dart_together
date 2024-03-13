import 'package:learn_dart_together/240313/book.dart';

import 'package:test/test.dart';
// import 주소 잘 확인 할것,,,, 망할

void main() {
  test('book Test', () {
    Book book = Book(
      name: '논어',
      price: 1000,
      color: '흰색',
      weight: 100,
      isbn: '4567890',
    );
    book.show();
    expect(book.weight, equals(100));
  });
}
