import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('Book Test', () {
    print('=========Test 1=========');
    Book book = Book(title: '하이', comment: '코멘트다');
    Book book2 = Book(title: '하이', comment: '코멘트라네');
    Book book3 = Book(title: '안녕', comment: '안녕하세요');

    print(book == book2);
    print(book == book3);

    expect(book, equals(book2)); // book과 book2는 이름이 같아서 통과
    expect(book, isNot(equals(book3))); // book과 book3는 이름이 달라서 다른 요소. isNot(equals()) 사용
  });

  test('Book Test 2', () {
    print('=========Test 2=========');
    Book book1 = Book(title: '책1', comment: '코멘트');
    Book book2 = Book(title: '책2', comment: '코멘트');
    Book book3 = Book(title: '책3', comment: '코멘트');
    Book book4 = Book(title: '책4', comment: '코멘트');
    book1.publishDate = DateTime.parse('2111-01-01');
    book2.publishDate = DateTime.parse('5111-01-01');
    book3.publishDate = DateTime.parse('4111-01-01');
    book4.publishDate = DateTime.parse('1111-01-01');

    List<Book> bookList = [book1, book2, book3, book4];
    // publishDate를 기준으로 오름차순으로 정렬
    bookList.sort((a, b) => a.publishDate.compareTo(b.publishDate));
    for(var item in bookList) {
      print(item.title);
    }
    // 책4-책1-책3-책2 순으로 출력됨
  });

  test('Book Test 3', () {
    print('=========Test 3=========');
    Book book = Book(title: '책1', comment: '코멘트');
    Book book2 = book.copyWith(comment: '커멘트');
    print(book == book2);
    expect(book, equals(book2));
  });
}