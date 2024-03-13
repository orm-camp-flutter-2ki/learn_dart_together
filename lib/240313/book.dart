import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.isbn,
  }) : super(name: name, price: price, color: color, weight: weight);
}
