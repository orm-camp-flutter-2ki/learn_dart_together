import 'package:learn_dart_together/240313/Tangible_Asset.dart';

class Book extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name, price, color);
}