import 'package:learn_dart_together/240312/Inherit/book.dart';
import 'package:learn_dart_together/240312/Inherit/fiction.dart';
import 'package:learn_dart_together/240312/Inherit/nonFiction.dart';
import 'package:test/test.dart';

void main() {
  test('booktest', () {
    Book fiction = Fiction('소설', '소설가', '판타지', '퓨전');

    Book nonFiction = NonFiction('논설문', '논설가', '논설', '정치');

    List<Book> books = [fiction, nonFiction];

    for (int i = 0; i < books.length; i++) {
      books[i].read();
    }
  });
}
