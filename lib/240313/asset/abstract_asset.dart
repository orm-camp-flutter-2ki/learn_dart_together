abstract class Asset {
  String name;

  Asset({required this.name});
}

abstract class TangibleAsset extends Asset {
  int price;
  String color;
  double weight;

  TangibleAsset({
    required String name,
    required this.price,
    required this.color,
    required this.weight,
  }) : super(name: name);
}

abstract class IntangibleAsset extends Asset {
  String patent;

  IntangibleAsset({
    required String name,
    required this.patent,
  }) : super(name: name);
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.isbn,
  }) : super(name: name, price: price, color: color, weight: weight);
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.makerName,
  }) : super(name: name, price: price, color: color, weight: weight);
}

class Idea extends IntangibleAsset {
  String patentNum;

  Idea({
    required String name,
    required String patent,
    required this.patentNum,
  }) : super(name: name, patent: patent);
}
