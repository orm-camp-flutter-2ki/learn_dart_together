import 'package:learn_dart_together/AbstractClass_240313/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;
  final double _weight;

  Computer({
    required super.name,
    required super.code,
    required super.price,
    required super.color,
    required super.quantity,
    required this.makerName,
    required double weight,
  }) : _weight = weight;

  @override
  void addAsset() {
    quantity++;
  }

  @override
  double get weight => throw UnimplementedError();

  @override
  set weight(double value) {
  }
}

void main() {
  Computer computer = Computer(name: '내컴퓨터',
    code: 'PC001',
    price: 3000000,
    color: 'Black',
    quantity: 1,
    makerName: 'NZXT',
    weight: 100,);
  computer.addAsset();
  print('컴퓨터를 한대 구입했습니다');
  print(computer.quantity);
}

