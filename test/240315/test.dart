import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  Object? description;
  test(description, ()
  {
    final Book book1 = Book(
        title: '한정은1',
        comment: '코멘트',
        publishDate: DateTime.parse('2024-01-03'));
    final Book book2 = Book(
        title: '한정은2',
        comment: '코멘트',
        publishDate: DateTime.parse('2024-01-01'));
    final Book book3 = Book(
        title: '한정은3',
        comment: '코멘트',
        publishDate: DateTime.parse('2024-01-02'));
    final Book book4 = Book(
        title: '한정은3',
        comment: '코멘트',
        publishDate: DateTime.parse('2024-01-02'));
    final Book book5 = book4; //book5는 book 객체의 book4 인스턴스의 주소를 가지고 있다(?)

    book4.title = '한정은5';
    print(book5.title); //공유하고 있다는 코드
    print(book4.title);

    print(book1 == book2);
    print(book2 == book3);
    print(book4.hashCode);
    print(book5.hashCode); //책이 같은지 같지 않은지 테스트
    print(book1.publishDate);
    print(book3.publishDate);

    final booklist = [book1, book2, book3];
    booklist.sort();
    for (var book in booklist) {
      print(book);
    }
    print(booklist); //  북 리스트 확인


    final Book copiedBook = book3.copyWith();

    print(
        book3); // 출력: Book { title: Title, publishDate: 2024-01-01 00:00:00.000 }
    print(
        copiedBook); // 출력: Book { title: New Title, publishDate: 2024-01-01 00:00:00.000 }
  });
}