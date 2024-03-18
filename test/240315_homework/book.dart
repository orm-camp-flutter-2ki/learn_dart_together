import 'package:learn_dart_together/240315_homework/book.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  test('제목과 출간일(2024-01-01)이 같으면 같은 책으로 판단한다', () {
    Book book = Book(title: 'title', comment: 'comment');
    Book book2 = Book(title: 'title', comment: 'comment');

    book.publishDate = DateTime(2024,10,10,1);
    book2.publishDate = DateTime(2024,10,10,2);

    expect(book == book2, true);

  });

}