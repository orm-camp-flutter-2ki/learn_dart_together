import 'tangible_asset.dart';

class Book extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.isbn,
  }) : super(name, price, color, weight);

// @override
// double weight;
}
