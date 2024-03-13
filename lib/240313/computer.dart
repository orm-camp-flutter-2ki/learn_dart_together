import 'package:learn_dart_together/240313/tangibleAsset.dart';

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  Computer({required this.name, required this.color, required this.price, required this.makerName});
}