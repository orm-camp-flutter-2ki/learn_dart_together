import 'tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(
      {required super.name,
      required super.price,
      required super.color,
      required super.assetWeight,
      required this.isbn});
}
