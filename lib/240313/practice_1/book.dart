import 'package:learn_dart_together/240313/practice_1/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(
    super.name,
    super.color,
    super.price,
    this.isbn,
  );
}
