import 'package:learn_dart_together/240312/practice_7/non_fiction.dart';

class Travel extends NonFiction {

  String country;

  Travel(super.title, super.author, super.genre,
          super.pages, super.price, super.subject,
          super.references, this.country);

}