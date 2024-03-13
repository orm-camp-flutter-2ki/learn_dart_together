import 'package:learn_dart_together/240313/computer.dart';
import 'package:test/test.dart';

import '../../240313/book.dart';

void main() {
  test('Asset name', () {
    // given
    Book book = Book(
        name: '군중심리',
        price: 12000,
        color: 'green',
        weight: 0.2,
        isbn: '979-11-397-001-4 03300');
    Computer computer = Computer(
        name: 'Hwnag',
        price: 1200000,
        color: 'black',
        weight: 10,
        makerName: 'custom');

    // when
    book.weight = 100;
    computer.weight = 200;

    // then
    expect(book.weight, equals(100));
    expect(computer.weight, equals(200));
  });
}
