import 'package:learn_dart_together/240318/generic/keyType.dart';
import 'package:learn_dart_together/240318/generic/strongBox.dart';
import 'package:learn_dart_together/240315/book.dart';
import 'package:test/test.dart';

void main() {
  test('safeq1', () {
    StrongBox <int> safeTest = StrongBox (KeyType.padlock);
    safeTest.put(20);
    int? testInt = safeTest.get();
    expect(testInt, equals(20));

    Book book = Book(title: '플러터', comment: '플러터');
    StrongBox <Book> safeTest1 = StrongBox(KeyType.padlock);
    safeTest1.put(book);
    Book? testBook = safeTest1.get();
    expect(testBook?.title, equals('플러터'));
  });
  test('safeq2', () {
    StrongBox <Book> safeTest = StrongBox (KeyType.padlock);

    Book book = Book(title: '플러터', comment: '플러터');
    safeTest.put(book);

    for (int i = 0; i < 1025; i++) {
      Book? testBook = safeTest.get();
      if(testBook !=null){
        expect(testBook?.title, equals('플러터'));
        expect(safeTest.number, equals(1025));
      }else{
        expect(testBook, equals(null));
      }
    }

    StrongBox <Book> safeTest1 = StrongBox (KeyType.button);

    Book book2 = Book(title: '플러터1', comment: '플러터1');
    safeTest.put(book2);

    for (int i = 0; i < 10001; i++) {
      Book? testBook = safeTest1.get();
      if(testBook !=null){
        expect(testBook?.title, equals('플러터1'));
        expect(safeTest.number, equals(10001));
      }else{
        expect(testBook, equals(null));
      }
    }

    StrongBox <int> safeTest2 = StrongBox (KeyType.dial);

    safeTest2.put(300);

    for (int i = 0; i < 30001; i++) {
      int? testInt = safeTest2.get();
      if(testInt !=null){
        expect(testInt, equals(300));
        expect(safeTest2.number, equals(30001));
      }else{
        expect(testInt, equals(null));
      }
    }

    StrongBox <int> safeTest3 = StrongBox (KeyType.finger);

    safeTest2.put(500);

    for (int i = 0; i < 1000001; i++) {
      int? testInt = safeTest3.get();
      if(testInt !=null){
        expect(testInt, equals(500));
        expect(safeTest2.number, equals(1000001));
      }else{
        expect(testInt, equals(null));
      }
    }

  });
}
