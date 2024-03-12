import 'book.dart';

class NonFiction extends Book {
  final String _subject;

  NonFiction(super.title, super.genre, super.author, {required String subject})
      : _subject = subject;
}
