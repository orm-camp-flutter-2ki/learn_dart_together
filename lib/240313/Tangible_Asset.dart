//유형자산 클래스
import 'package:learn_dart_together/240313/asset.dart';

abstract class TangibleAsset extends Asset {
  // String name;
  // int price;
  String color;

  TangibleAsset(String name, int price, this.color) : super(name, price);
}

