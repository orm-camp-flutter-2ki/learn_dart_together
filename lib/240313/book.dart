import 'package:learn_dart_together/240313/tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(
      {required super.name,
      required super.price,
      required super.color,
      required this.isbn});
}
