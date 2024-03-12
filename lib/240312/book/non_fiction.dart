import 'book.dart';

class NonFictoon extends Book {
  String subject;
  NonFictoon(super.title, super.author, super.genre, this.subject);
}
