import 'package:learn_dart_together/240313/practice_1/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.weight,
    required super.color,
    required super.warrantyExpiredYear,
    required super.warrantyExpiredMonth,
    required super.warrantyExpiredDay,
    required this.isbn,
  });
}
