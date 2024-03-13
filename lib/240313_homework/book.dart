import 'tangibleAsset.dart';

abstract class Book extends TangibleAsset {
  int price;
  String color;
  String isbn;

  Book({
    required super.name,
    required super.weight,
    required this.price,
    required this.color,
    required this.isbn,
  });
}
