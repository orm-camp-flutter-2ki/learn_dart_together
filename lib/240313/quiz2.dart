abstract class Asset {
  String name;
  Asset(this.name);
}

abstract class TangibleAsset extends Asset {
  int price;
  String color;

  TangibleAsset(super.name, this.price, this.color);

  void touchAble() {
    print('$name은 만져집니다.');
  }
}

abstract class IntangibleAsset extends Asset {
  double value;
  IntangibleAsset(super.name, this.value);

  void untouchAble() {
    print('$name은 만질 수 없습니다.');
  }
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
  }) : super(name, price, color);
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
  }) : super(name, price, color);
}

class Bitcoin extends IntangibleAsset {
  Bitcoin(super.name, super.value);
}

void main() {
  Bitcoin bitcoin = Bitcoin('비트코인', 10000000);
  print(bitcoin.name);
  print(bitcoin.value);
  bitcoin.untouchAble();
}