//가 Asset 나 IntangibleAsset 다 Patent

abstract class Asset { //가
  Asset();
  void asset(){
    print('Asset 입니다.');
  }
}

//나
abstract class IntangibleAsset extends Asset {}

abstract class Patent extends IntangibleAsset {} //다

abstract class TangibleAsset extends Asset {
  String name;
  int price;
  String color;

  TangibleAsset(this.name, this.price, this.color);

  void myName();

  void myPrice();

  void myColor();
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
  }) : super(name, price, color);

  @override
  void myName() {
    print('My name is $name');
  }

  void myPrice() {
    print('My price is $price');
  }

  void myColor() {
    print('My price is $color');
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

  @override
  void myName() {
    print('My name is $name');
  }

  void myPrice() {
    print('My price is $price');
  }

  void myColor() {
    print('My price is $color');
  }
}

main() {

  Book book = Book(
      name:'냐옹이백과사전',
      price:50000,
      color:'yellow',
      isbn: '1314'
  );

  book.myColor();
  book.myName();
}