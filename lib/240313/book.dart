import 'tangible_asset.dart';

class Book extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String isbn;

  Book(
    String name, 
    int price,  
  // super.name,
  //   super.price,
  {
    required super.color,
    required super.weight,
    required this.isbn,
  }) : super('', 0, color: '', weight: 0.0);

// @override
// double weight;
}
