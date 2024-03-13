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

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name: name, price: price, color: color); // 부모생성자 불러오기
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
  }) : super(name: name, price: price, color: color);
}
