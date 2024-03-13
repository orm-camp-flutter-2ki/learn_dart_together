import 'package:learn_dart_together/240313/asset.dart';
import 'package:test/test.dart';

void main() {
  group('Book 테스트', () {
    test('Book 인스턴스 생성', () {
      Book book = Book(
          name: 'Flutter 프로그래밍',
          price: 20000,
          color: '파랑',
          isbn: '9781234567890');
      expect(book.name, 'Flutter 프로그래밍');
      expect(book.price, 20000);
      expect(book.color, '파랑');
      expect(book.isbn, '9781234567890');
    });
  });

  group('Computer 테스트', () {
    test('Computer 인스턴스 생성', () {
      Computer computer = Computer(
          name: 'MacBook Pro', price: 3000000, color: '은색', makerName: 'Apple');
      expect(computer.name, 'MacBook Pro');
      expect(computer.price, 3000000);
      expect(computer.color, '은색');
      expect(computer.makerName, 'Apple');
    });
  });
}
