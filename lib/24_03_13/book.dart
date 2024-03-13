import 'package:learn_dart_together/24_03_13/tangibleAsset.dart';

class Book extends TangibleAsset{


  String isbn;


  Book({
    required super.price,
    required super.name,
    required super.color,
    required this.isbn,
});
}