void main(){

}

abstract class Asset implements Thing

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  int price;
  String color;
}

abstract interface class Thing {
  double get Weight();
  double set Weight();
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

