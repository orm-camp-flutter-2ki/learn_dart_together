// 가)
abstract class Asset {
  String name;

  Asset({required this.name});
}

abstract class TangibleAsset extends Asset {
  int price;
  String color;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
  });
}

//나)
abstract class intangibleAsset extends Asset {
  String patent;

  intangibleAsset({
    required super.name,
    required this.patent,
  });
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
  });
}

//다)
class idea extends intangibleAsset {
  String patentNum;

  idea({
    required super.name,
    required super.patent,
    required this.patentNum,
  });
}
