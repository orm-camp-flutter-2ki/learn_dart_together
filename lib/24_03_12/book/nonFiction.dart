import 'package:learn_dart_together/24_03_12/book/book.dart';

class NonFiction extends Book {
  String subgenre;

  NonFiction(
    super.name,
    super.price,
    super.color,
    super.isbn,
    this.subgenre
  );
}
