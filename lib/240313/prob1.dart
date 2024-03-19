//이후, 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오. 또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.

// class Book {
//   String name;
//   int price;
//   String color;
//   String isbn;
//
//   Book({
//     required this.name,
//     required this.price,
//     required this.color,
//     required this.isbn,
//   });
// }
//
// class Computer {
//   String name;
//   int price;
//   String color;
//   String makerName;
//
//   Computer({
//     required this.name,
//     required this.price,
//     required this.color,
//     required this.makerName,
// });
// }

//추상 클래스
abstract class TangibleAsset {
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