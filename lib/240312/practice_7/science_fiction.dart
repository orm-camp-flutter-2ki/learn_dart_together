import 'package:learn_dart_together/240312/practice_7/fiction.dart';

class ScienceFiction extends Fiction {

  int hero;

  ScienceFiction(super.title, super.author, super.genre,
                  super.pages, super.price, super.subgenre,
                  super.series, super.isBestseller, this.hero);

}