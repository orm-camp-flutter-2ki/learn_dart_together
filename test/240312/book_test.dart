import 'package:learn_dart_together/240312/practice7/fiction.dart';
import 'package:learn_dart_together/240312/practice7/non_fiction.dart';
import 'package:test/test.dart';

void main() {
  test('Book Test', () {
    Fiction fiction = Fiction(title: '소설', author: '작가', genre: '장르', subgenre: '서브장르');
    fiction.read();

    NonFiction nonFiction = NonFiction(title: '이것은 실화입니다', author: '나', genre: '일상', subject: '코딩');
    nonFiction.read();
  });
}