import 'Tangible_Asset.dart';

class Computer extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.makerName,
  }) : super(name, price, color, weight);

  // @override
  // double weight;
}
