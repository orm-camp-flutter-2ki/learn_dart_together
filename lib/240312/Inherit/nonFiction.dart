import 'book.dart';

class NonFiction extends Book {
  String subject;

  NonFiction(super.title, super.author, super.genre, this.subject);
}
