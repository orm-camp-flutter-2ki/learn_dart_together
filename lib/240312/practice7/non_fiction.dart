import 'package:learn_dart_together/240312/practice7/book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subject
  });

  @override
  void read() {
    super.read();
    print('이 책은 소설이 아니네요.');
  }
}