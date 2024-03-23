import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  group('Book Class 테스트', () {
    var publishDate = DateTime(2024, 03, 15);
    Book book1 = Book(title: '1번', comment: 'comment', publishDate: publishDate);
    Book book2 = Book(title: '1번', comment: 'comment222', publishDate: DateTime(2021, 11, 24));
    Book book3 = Book(
      title: '2번',
      comment: 'comment',
    );
    test('제목과 출간일(2024-01-01)이 다르면 다른 책으로 판단한다', () {
      // Given
      Book book1 = Book(title: '1번', comment: 'comment', publishDate: DateTime(2024, 3, 15));
      Book book2 = Book(title: '1번', comment: 'comment222', publishDate: DateTime(2024, 3, 14));
      // When
      final result = book1 == book2;
      // Then
      expect(result, isFalse);
    });

    test('제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다', () {
      // Given
      Book book1 = Book(title: '1번', comment: 'comment', publishDate: DateTime(2024, 3, 15));
      Book book2 = Book(title: '1번', comment: 'comment222', publishDate: DateTime(2024, 3, 15));
      // When
      final result = book1 == book2;
      // Then
      expect(result, isTrue);
    });
    test('Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.', () {
      final books = [book1, book2];
      final sortedBooks = [book2, book1];
      books.sort((a, b) => a.publishDate.compareTo(b.publishDate));
      expect(books.first.title == sortedBooks.first.title, true);
    });

    test('deep copy 가 잘 되는가', () {
      final book = Book(title: 'title', comment: 'comment');
      final book2 = book.copyWith();

      // 복사 잘 됨
      expect(book == book2, true);

      // title 복사
      final book3 = book.copyWith(title: 'change');
      expect(book3.title == 'change', true);
      expect(book3.publishDate == book.publishDate, true);
      expect(book3.comment == book.comment, true);
    });
  });
}
