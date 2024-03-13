import 'package:learn_dart_together/240312/book/book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction(super.title, super.author, super.genre, this.subject);
}
