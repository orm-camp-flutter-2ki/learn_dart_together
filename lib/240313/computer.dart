import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.makerName,
  }) : super(name: name, price: price, color: color, weight: weight);
}
