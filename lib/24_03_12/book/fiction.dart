import 'package:learn_dart_together/24_03_12/book/book.dart';

class Fiction extends Book {
  String subgenre;

  Fiction(
    super.name,
    super.price,
    super.color,
    super.isbn,
    this.subgenre
  );
}
