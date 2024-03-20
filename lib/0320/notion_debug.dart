import 'package:learn_dart_together/0315/book.dart';

void main() {
  // set은 hashCode 기반으로 중복을 판단..
  final Set<Book> books = {};

  // operator ==, hashcode 재정의 되어있음
  // 메모리상 다른게 맞으나 hashcode 동일
  Book book1 = Book(title: 'title', comment: 'comment');
  print(book1.hashCode);
  Book book2 = Book(title: 'title', comment: 'comment');
  print(book2.hashCode);

  books.add(book1);
  books.remove(book2);

  someTing(10);

  print(books.length); // 0출력
}

void someTing(int i) {
  print(i);
  print(i);
  print(i);
}
