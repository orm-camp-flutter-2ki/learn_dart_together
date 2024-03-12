import 'package:learn_dart_together/24_03_12/practice_07/book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction({
    required super.title,
    required super.author,
    required super.genre,
    required this.subgenre,
  });
}
