import 'package:learn_dart_together/0315/book.dart';
import 'package:learn_dart_together/0318/key_type.dart';
import 'package:learn_dart_together/0318/strong_box.dart';
import 'package:test/test.dart';

void main() {
  Book book = Book(title: '오준석의 생존 코딩', comment: 'comment');
  StrongBox<Book> strongBox = StrongBox(KeyType.finger);

  test('금고에 물건 보관하고 닫기 전에 꺼내기', () {
    strongBox.put(book);
    expect(strongBox.get().runtimeType, Book);
  });

  test('금고 닫기', () {
    strongBox.close();
    expect(strongBox.isOpen, false);
  });

  test('닫힌 금고에서 물건 꺼내기', () {
    expect(strongBox.isOpen, false);
    expect(strongBox.tryCount, 0);

    while (strongBox.tryCount < strongBox.key.needToTry) {
      strongBox.get();
    }

    expect(strongBox.isOpen, true);
    expect(strongBox.tryCount, strongBox.key.needToTry);
    expect(strongBox.get()?.title, '오준석의 생존 코딩');
  });
}