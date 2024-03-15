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
  Book book1 = Book(title: 'testbook', comment: 'test입니다.');

  /// title 다르고 발행일만 같다
  Book book2 = Book(title: 'hey', comment: 'test입니다.');

  /// title은 같고 발행일은 다르다
  Book book3 = Book(
      title: 'testbook', publishDate: DateTime(2011, 6, 2), comment: 'test 4.');

  print(book.publishDate);
  print(book3.publishDate);
  print(book.hashCode);
  print(book3.hashCode);

  test('deep copy가 잘 되었는지  테스트', () {
    // expect(book , bookClone); // 통과, deep copy
  });

  test('이름과 발행일이 같으면 같은 객체로 취급하는지 테스트', () {
    expect(book , book1); // 통과
    // expect(book , book2); // error
    // expect(book, book3); // error
  });
}
