import 'book.dart';

class Fictoon extends Book {
  String subgenre;
  Fictoon(super.title, super.author, super.genre, this.subgenre);
}
