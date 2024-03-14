import 'package:learn_dart_together/AbstractClass_240313/TangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;


  Book({
    required super.name,
    required super.code,
    required super.price,
    required super.color,
    required super.quantity,
    required this.isbn,
    required super.weight,
  });

}

void main() {
  Book book = Book(
    name: '디자인 생각',
    code: 'SN204821359B',
    price: 13000,
    color: 'White',
    quantity: 1,
    isbn: '34830P9FEI',
    weight: 30,
  );
  book.addBuy();
  print('책을 한권 구입했습니다');
  print(book.quantity);
}
