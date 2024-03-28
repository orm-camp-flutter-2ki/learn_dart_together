import 'package:learn_dart_together/24_03_13/03_tangibleAsset.dart';

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  // double _weight;
  //
  // @override
  // double get weight => _weight;
  //
  // @override
  // set weight(double value) {
  //   _weight = value;
  // }

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
    required this.weight,
    // required super.isFixedAsset,
    // required super.useYear,
    // required super.expirationDate,
    // required super.isWeighted,
  }) : super(isFixedAsset: false, useYear: 0, expirationDate: 0, isWeighted: false, weight: 0.0);

  @override
  void depreciated(TangibleAsset tangibleAsset) {}

  @override
  double weight;

  @override
  void isThing();
}

void main() {
  Computer computer = Computer(
    name: '내컴퓨터',
    price: 300,
    color: 'black',
    makerName: '세진컴퓨터',
    weight: 10,
    // isWeighted: true,
    // isFixedAsset: true,
    // useYear: 10,
    // expirationDate: 30,
  );

  computer.depreciated(computer);
  computer.isThing();
}
