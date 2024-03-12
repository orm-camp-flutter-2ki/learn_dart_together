import 'package:learn_dart_together/0312/05/book.dart';

class NonFiction extends Book {

  final String subject;

  NonFiction(super.title, super.author, super.genre, this.subject);
}