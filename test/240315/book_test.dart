import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

//연습문제 1)
void main() {
  group('Book', () {
    Book book1 = Book(
      title: '동기부여',
      comment: 'mind',
      publishDate: DateTime.parse('2024-01-01'),
    );
    Book book2 = Book(
      title: '동기부여',
      comment: 'mind control',
      publishDate: DateTime.parse('2024-01-01'),
    );
    Book book3 = Book(
      title: '환경설정',
      comment: 'Good book',
      publishDate: DateTime.parse('2024-02-01'),
    );

    // test('Book equality - Same title and publish date', () {
    //   expect(book1 == book2, true);
    // });
    //
    // test('다른 제목 책 비교', () {
    //   expect(book1 == book3, false);
    // });
    //
    // test('같은 책 비교', () {
    //   expect(book1.compareTo(book2), 0);
    // });
    //
    // test('Book comparison - Earlier publish date', () {
    //   expect(book1.compareTo(book3), -1);
    // });
    //
    // test('Book comparison - Later publish date', () {
    //   expect(book3.compareTo(book1), 1);
    // });

    test('copyWith 테스트', () {
      final book1 = Book(
        title: '테스트 책',
        comment: '테스트용',
        publishDate: DateTime.parse('2024-03-16'),
      );
      final book2 = book1.copyWith(publishDate: DateTime.parse('2024-03-17'));

      //
      expect(book1.title, book2.title);
      expect(book1.comment, book2.comment);
      expect(book1.publishDate, isNot(book2.publishDate));

    });
  });
}

