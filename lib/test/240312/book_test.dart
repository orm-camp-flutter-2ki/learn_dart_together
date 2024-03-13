import 'package:learn_dart_together/240312/fiction.dart';
import 'package:learn_dart_together/240312/nonfiction.dart';
import 'package:test/test.dart';

void main() {
  test('Book Test', () {
    Fiction fiction = Fiction(
      '논어를 알라',
      '공자제자',
      '소설',
    );
    fiction.read();
    NonFiction nonFiction = NonFiction(
      '사람에대하여',
      '나저자',
      '실화',
    );
    nonFiction.read();
  });
}
