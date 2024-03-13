//Asset 추상클래스
abstract class Asset {
  String name;
  int price;

  Asset(this.name, this.price);
}

//무형자산 클래스
abstract class IntangibleAsset extends Asset {
  // String name;
  // int price;
  // String color;

  IntangibleAsset(String name, int price) : super(name, price);
}


//유형자산 클래스
abstract class TangibleAsset extends Asset {
  // String name;
  // int price;
  String color;

  TangibleAsset(String name, int price, this.color) : super(name, price);
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

//무형자산 특허권
class Patent extends IntangibleAsset {
  String patentNumber;

  Patent({
    required String name,
    required int price,
    required this.patentNumer;
  }) :super(name, price);
}