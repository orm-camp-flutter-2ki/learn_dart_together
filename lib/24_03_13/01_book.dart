import 'package:learn_dart_together/24_03_13/03_tangibleAsset.dart';

class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book({
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
    required this.weight,
    // required super.isFixedAsset,
    // required super.useYear,
    // required super.expirationDate,
    // required super.isWeighted,
  }) : super(isFixedAsset: false, useYear: 0, expirationDate: 0, isWeighted: false, weight: 0.0);

  @override
  void isThing();

  @override
  double weight;
}

void main() {
  Book book = Book(
      name: '세진',
      price: 500,
      color: 'black',
      isbn: 'isbn',
      // isFixedAsset: true,
      // useYear: 10,
      // expirationDate: 30,
      // isWeighted: true,
      weight: 15);

  book.depreciated(book);
  book.isThing();
}
