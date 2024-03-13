import 'package:learn_dart_together/240313/tangibleAsset.dart';

class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book(
      {required this.name,
      required this.price,
      required this.color,
      required this.isbn});
}
