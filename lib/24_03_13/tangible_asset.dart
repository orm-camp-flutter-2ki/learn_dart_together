import 'package:learn_dart_together/24_03_12/book.dart';

/// 유형자산
abstract class TangibleAsset {
  String name;
  int price;
  String color;

  TangibleAsset({
    required this.name,
    required this.price,
    required this.color,
  });
}

Fiction fiction = Fiction(
  'subgenre',
  author: 'author',
  genre: 'genre',
  isbn: 'isbn',
  name: 'name',
  price: 0,
  color: 'color',
);
