import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;
  double _weight;

  Book(
    super.name,
    super.price,
    super.color,
    this._weight,
    this.isbn
  );

  @override
  void displayInfo() {
    print("BookName: $name, Price: $price, Color: $color, Isbn: $isbn");
  }

  @override
  double get weight {
    return _weight ?? 0.0;
  }

  @override
  set mass(double value) {
    _weight = value;
  }
}

void main() {
  Book book = Book('퍼즐로 이해하는 알고리즘', 3, 'white', 100.0, 'BJPublic');
  book.mass = 10.0;
  book.displayInfo();
  print('${book.weight}');
}
