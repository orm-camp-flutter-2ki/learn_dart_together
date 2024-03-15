import 'package:learn_dart_together/24_03_15/book.dart';
import 'package:test/test.dart';

void main() {
  test('TEST_Book의 publishDate와 title이 동일하면 같은책이다', () {
    Book lee = Book(title: '이순신', comment:'위인전', publishDate: DateTime(2024,03,15));
    Book kim = Book(title: '이순신', comment:'위인전', publishDate: DateTime(2024,03,15));

    expect(lee == kim, true);
  });

  test('TEST_Book의 title이 동일하고 publishDate를 입력하지 않았을 때, 두 객체는 동일하다', () {
    Book lee = Book(title: '이순신', comment:'위인전');
    Book kim = Book(title: '이순신', comment:'위인전');

    expect(lee == kim, true);
  });

  test('TEST_Book의 딥카피 메서드로 복사한 객체는 원본과 다르다', () {
    Book lee = Book(title: '이순신', comment:'위인전', publishDate: DateTime(2024,03,15));
    Book kim = lee.copyWith();

    expect(lee == kim, false);
  });
}