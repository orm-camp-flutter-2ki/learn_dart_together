import 'package:learn_dart_together/24_03_12/book.dart';

class Fiction extends Book {
  final String _subgenre;

  Fiction(super.title, super.genre, super.author, {required String subgenre})
      : _subgenre = subgenre;
}
