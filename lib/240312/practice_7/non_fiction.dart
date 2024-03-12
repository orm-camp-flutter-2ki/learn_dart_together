import 'package:learn_dart_together/240312/practice_7/book.dart';

class NonFiction extends Book {

  String subject;
  List<String> references;

  NonFiction(super.title, super.author, super.genre,
            super.pages, super.price,
            this.subject, this.references);

}