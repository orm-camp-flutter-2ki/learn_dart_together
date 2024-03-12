import 'package:learn_dart_together/240312/practice_7/non_fiction.dart';

class History extends NonFiction {

  int year;

  History(super.title, super.author, super.genre,
          super.pages, super.price, super.subject,
          super.references, this.year);

}