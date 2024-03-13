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
    required super.isFixedAsset,
    required super.useYear,
    required super.expirationDate,
  });
}

void main() {
  Book book = Book(
      name: '세진',
      price: 500,
      color: 'black',
      isbn: 'isbn',
      isFixedAsset: true,
      useYear: 10,
      expirationDate: 30);

  book.depreciated(book);
}
