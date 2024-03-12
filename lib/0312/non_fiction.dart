import 'package:learn_dart_together/0312/book.dart';

class NonFiction extends Book {
  bool factBased = false;

  NonFiction({
    required super.title,
    required super.author,
    required super.contents,
  });

  void factCheck(){
    factBased ? print('이 책은 소설이 아닙니다.') : print('이 책은 사실 소설이었습니다.');
  }
}
