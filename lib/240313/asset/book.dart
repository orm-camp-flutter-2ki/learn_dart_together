import 'package:learn_dart_together/240313/asset/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required super.weight,
  });
}
