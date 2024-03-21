import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  // String name;
  // int price;
  // String color;
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required this.makerName,
  });
}
