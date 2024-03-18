import 'package:learn_dart_together/240318/generic/strongBox.dart';
import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('safe', () {
    StrongBox <int> safeTest = StrongBox ();
    safeTest.put(20);
    int? testInt = safeTest.get();
    expect(testInt, equals(20));

    Book book = Book(title: '플러터', comment: '플러터');
    StrongBox <Book> safeTest1 = StrongBox();
    safeTest1.put(book);
    Book? testBook = safeTest1.get();
    expect(testBook?.title, equals('플러터'));
  });
}
