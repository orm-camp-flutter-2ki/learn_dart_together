import 'package:learn_dart_together/24_03_15/book2.dart';
import 'package:test/test.dart';

void main() {
  test('book2Test', () {
    Book2 book = Book2(title: '알고리즘', comment: '완전 탐색', publishDate: DateTime(2024, 3, 15));
    Book2 book2 = Book2(title: '다트', comment: '객체 지향', publishDate: DateTime(2024, 3, 15));
    Book2 book3 = book2.copyWith(title: '다트', comment: '객체 지향', publishDate: DateTime(2024, 3, 15));
    List<Book2> bookList = [];

    bookList.add(book);
    bookList.add(book2);
    bookList.add(book3);

    print(book == book2); // 제목이 달라서 false
    bookList.sort((a, b) {
      // 출간일 오름차순 정렬
      return a.publishDate.compareTo(b.publishDate);
    });
    expect(book == book2, false);
    expect(bookList, isNotEmpty);
    expect(book2 == book3, true);
  });
}