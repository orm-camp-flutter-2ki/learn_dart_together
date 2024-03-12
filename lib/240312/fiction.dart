import 'book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction({required super.title, required super.author, required super.genre, required this.subgenre});
}
