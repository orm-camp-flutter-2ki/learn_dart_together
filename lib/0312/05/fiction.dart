import 'package:learn_dart_together/0312/05/book.dart';

class Fiction extends Book {

  final String subgenre;

  Fiction(super.title, super.author, super.genre, this.subgenre);
}