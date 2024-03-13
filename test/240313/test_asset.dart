import 'package:learn_dart_together/240313/book.dart';
import 'package:learn_dart_together/240313/patent.dart';
import 'package:test/test.dart';

void main() {
  test('asset', () {
    Patent pattern =
        Patent(name: '특허', price: 1000, expirationYn: true, patentNumber: 1000);

    Book book = Book(
        name: '플러터',
        price: 2000,
        color: '파란색',
        assetWeight: 1.5,
        isbn: 'bn1111');
    book.weight = 2.0;
    expect(book.weight, equals(2.0));
  });
}
