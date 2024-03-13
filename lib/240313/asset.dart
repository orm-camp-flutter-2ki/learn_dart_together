abstract class TangibleAsset {
  String name;
  int price;
  String color;

  TangibleAsset(this.name, this.price, this.color);
}

class Book extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name, price, color);
}

class Computer extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
  }) : super(name, price, color);
}
