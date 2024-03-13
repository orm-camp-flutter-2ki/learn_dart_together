abstract class TangibleAsset {
  String name;
  int price;
  String color;
  TangibleAsset(this.name, this.price, this.color);

  void touchAble() {
    print('<$name>은 만져집니다.');
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

void main() {
  Book book = Book(
    name: '오준석의 플러터 생존 코딩',
    price: 25200,
    color: 'white',
    isbn: '9791162244371',
  );

  print(book.name);
  print(book.color);
  print(book.isbn);
  book.touchAble();

  Computer computer = Computer(
    name: 'ThinkPad E15',
    price: 1000000,
    color: 'black',
    makerName: 'Lenovo',
  );

  print(computer.name);
  print(computer.price);
  print(computer.makerName);
  computer.touchAble();
}