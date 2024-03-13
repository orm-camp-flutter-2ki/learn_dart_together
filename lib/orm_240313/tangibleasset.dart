import 'package:learn_dart_together/orm_240313/thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;



  @override
  double get weight => _weight;


  @override
  set weight(double value) {
    if (value > 0) {
      _weight = value;
    } else {
      throw Exception('Weight must be positive');
    }
  }

  TangibleAsset(super.name, super.price, this.color, this._weight);
}




class Book extends TangibleAsset {
  String isbn;

  Book(String name, int price, String color, this.isbn)
      : super(name, price, color, 0.5);


  @override
  String toString() {
    return '제목: $name, 가격: $price원, 색깔: $color, 고유 번호: $isbn';
  }
}

class Computer extends TangibleAsset {
  String makerName;

  Computer(String name, int price, String color, this.makerName, double weight)
      : super(name, price, color, weight);


  @override
  String toString() {
  return '제품명: $name, 가치: $price원, 색깔: $color, 제조사: $makerName';
   }


}

void main() {
  Book book = Book('톰 소여의 모험', 6500, '흰색', '64800');
  Computer computer = Computer('Macbook Air 15', 216000, '미드나이트', 'Apple', 2.5);
  print(book);
  print(computer);
  print('책 제목: ${book.name}, 무게: ${book.weight}kg');
  print('컴퓨터 모델: ${computer.name}, 무게: ${computer.weight}kg');
}
