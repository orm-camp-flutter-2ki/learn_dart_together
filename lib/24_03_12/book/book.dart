import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;
  double? weight;

  Book(
    super.name,
    super.price,
    super.color,
    this.isbn
  );

  @override
  void displayInfo() {
    print("BookName: $name, Price: $price, Color: $color, Isbn: $isbn");
  }

  @override
  double getWeight() {
    return weight ?? 0.0;
  }

  @override
  void setMass(double value) {
    weight = value;
  }
}

void main() {
  Book book = Book('퍼즐로 이해하는 알고리즘', 3, 'white', 'BJPublic');
  book.setMass(10);
  book.displayInfo();
  print('${book.weight}');
}
