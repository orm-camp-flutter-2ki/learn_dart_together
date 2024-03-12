import 'package:learn_dart_together/24_03_12/practice_07/book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subject,
  });
}
