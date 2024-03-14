import 'tangible_asset.dart';

class Book extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String isbn;

  Book(
    super.name,
    super.price,{
    required super.color,
    required super.weight,
    required this.isbn,
  });

// @override
// double weight;
}
