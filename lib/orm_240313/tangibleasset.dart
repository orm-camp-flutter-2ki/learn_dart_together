import 'package:learn_dart_together/orm_240313/thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;


  TangibleAsset(super.name, super.price, this.color);
}

  @override
  double get weight => 1.0;


class Book extends TangibleAsset {
  String isbn;

  Book(super.name,
      super.price,
      super.color,
      this.isbn,);

  @override
  double get weight => 0.5;

  @override
  String toString() {
    return '제목: $name, 가격: $price원, 색깔: $color, 고유 번호: $isbn';
  }

  @override
  set weight(double value) {
    if( )
  }
}

class Computer extends TangibleAsset {
  String makerName;

  Computer(super.name,
      super.price,
      super.color,
      this.makerName,);



  @override
  String toString() {
    return '제품명: $name, 가치: $price원, 색깔: $color, 제조사: $makerName';
  }


}

void main() {
  Book book = Book('톰 소여의 모험', 6500, '흰색', '64800');
  Computer computer = Computer('Macbook Air 15', 216000, '미드나이트', 'Apple');
  print(book);
  print(computer);
  print('책 제목: ${book.name}, 무게: ${book.weight}kg');
  print('컴퓨터 모델: ${computer.name}, 무게: ${computer.weight}kg');
}
