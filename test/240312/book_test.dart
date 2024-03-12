import 'package:learn_dart_together/240312/book.dart';
import 'package:learn_dart_together/240312/fiction.dart';
import 'package:learn_dart_together/240312/non_fiction.dart';
import 'package:test/test.dart';

main() {
  test('Book', () {
    Book book = Book('불안', '알랭드보통', '수필');
    print(book.title);
    NonFiction non = NonFiction('이기적 유전자', '리처드도킨스', '과학', '진화학');
    print(non.subject);
    Fiction fic = Fiction('토지', '박경리', '소설', '대하소설');
    print(fic.subgenre);
  });
}
