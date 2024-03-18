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
    required this.isbn, required String name, required int price,
  });

// @override
// double weight;
}
