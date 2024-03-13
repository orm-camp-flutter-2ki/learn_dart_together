import 'tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(
    super.name,
    super.price,
    super.color,
    super._weight,
    this.isbn,
  );

  @override
  String system() {
    return '도서 재고 관리 = 도서명: $name, 가격: $price, 색상: $color, ISBN: $isbn';
  }
}
