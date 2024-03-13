import 'package:learn_dart_together/240313/asset.dart';

abstract class TangibleAsset extends Asset {
  String name;
  int price;
  String color;

  TangibleAsset({required this.name, required this.price, required this.color});
}
