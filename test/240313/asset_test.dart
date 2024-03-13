import 'package:learn_dart_together/240313/book.dart';
import 'package:test/test.dart';

void main() {
  test('asset test', () {
    Book book = Book(
      name: '책 제목',
      price: 20000,
      color: '파란색',
      weight: 1.5,
      isbn: '9781234567890',
    ); //Book클래스 인스턴스 생성

    // 수정된 부분: expect 문의 인수를 올바르게 수정
    expect(book.name, '책 제목');
    expect(book.price, 20000);
    expect(book.color, '파란색');
    expect(book.weight, 1.5);
    expect(book.isbn, '9781234567890');
  });
}
