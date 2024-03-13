import 'package:learn_dart_together/24_03_13/03_tangibleAsset.dart';

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
  }) : super(isFixedAsset: true, useYear: 10, expirationDate: 30);

  @override
  void depreciated(TangibleAsset tangibleAsset) {

  }
}

void main() {
  Computer computer = Computer(
    name: '내컴퓨터',
    price: 300,
    color: 'black',
    makerName: '세진컴퓨터',
  );

  computer.depreciated(computer);
}
