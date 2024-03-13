import 'package:learn_dart_together/240313/book.dart';
import 'package:learn_dart_together/240313/computer.dart';
import 'package:test/test.dart';

void main() {
  test('Book Test', () {
    Book book = Book(
        name: '책책책 책을 읽읍시다',
        price: 32000,
        color: 'Red',
        weight: 3.2,
        isbn: '2D04JFU301'
    );
    book.weight = 4.1;
    expect(book.weight, equals(4.1));
    book.printInformation();
  });

  test('Computer Test', () {
    Computer computer = Computer(
        name: '콩순이콤퓨타',
        price: 1500000,
        color: 'Blue',
        weight: 10.2,
        makerName: '쌤성'
    );
    computer.weight = 20.1;
    expect(computer.weight, equals(20.1));
    computer.printInformation();
  });
}