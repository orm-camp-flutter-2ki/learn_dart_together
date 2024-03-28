import 'package:learn_dart_together/AbstractClass_240313/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.code,
    required super.price,
    required super.color,
    required super.quantity,
    required this.makerName,
    required super.weight,
  });


}

void main() {
  TangibleAsset computer = Computer(name: '내컴퓨터',
    code: 'PC001',
    price: 3000000,
    color: 'Black',
    quantity: 1,
    makerName: 'NZXT',
    weight: 100,);
  computer.addBuy();
  print('컴퓨터를 한대 구입했습니다');
  print(computer.quantity);
}

