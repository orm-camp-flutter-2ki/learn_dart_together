import 'book.dart';

class Fiction extends Book {

  String subgenre;

  Fiction(super.title, super.author, super.genre , this.subgenre);

}