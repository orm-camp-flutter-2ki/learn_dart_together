import '02_tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required super.weight,
  });

  @override
  printInfo() {
    print('이름: $name, 가격: $price, 색: $color, 제조사: $isbn, 무게: $weight');
  }
}
