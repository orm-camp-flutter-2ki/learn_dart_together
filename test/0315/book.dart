import 'package:learn_dart_together/0315/book.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  Book book = Book(
    title: 'testbook',
    comment: 'test입니다.',
  );

  /// book의 deep copy
  Book bookClone = book.copyWith();

  /// title과 발행일이 같다
  Book book1 = Book(title: 'testbook', comment: '제목과 발행일이 같다.');

  /// title 다르고 발행일만 같다
  Book book2 = Book(title: 'hey', comment: '제목은 다르나 발행일은 같다.');

  /// title은 같고 발행일은 다르다
  Book book3 = Book(
      title: 'testbook', publishDate: DateTime(2011, 6, 2), comment: '제목은 같으나 발행일은 다르다.');

  print(book.dateForm(book.publishDate).hashCode);
  print(bookClone.dateForm(bookClone.publishDate).hashCode);

  test('deep copy가 잘 되었는지  테스트', () {
    /// deep copy를 했을 때, 원본과 카피본은 객체 요소들이 동일한 값이다. 그렇지만 둘은 다른 객체이다.
    expect(book , bookClone); // 통과, deep copy
    /// 실제 객체가 다름을 확인하는 identical() 함수. 같은 객체라면 true, 다른 객체라면 false.
    expect(identical(book, bookClone), false); // 통과, 객체 요소들은 동일한 값을 가지고 있지만 서로 다른 객체이다.
  });

  test('이름과 발행일이 같을 때, 같은 객체로 취급하는지 테스트', () {
    expect(book , book1); // 통과
    // expect(book , book2); // error
    // expect(book, book3); // error
  });

  test('이름과 발행일 중 하나라도 같지 않을 때, 다른 객체로 취급하는지 테스트', () {
    expect((book == book1), true);
    expect((book == book2), false);
    expect((book == book3), false);
  });
}
