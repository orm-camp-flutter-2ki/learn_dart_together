import 'package:learn_dart_together/240312/book/book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction(super.title, super.author, super.genre, this.subgenre);
}
