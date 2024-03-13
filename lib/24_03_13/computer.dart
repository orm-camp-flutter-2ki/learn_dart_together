import 'tangibleasset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name, // name, price는 asset의 생성자
    required super.price,
    required super.color, // color, weight는 tangibleasset의 생성자 => 잊지말자
    required super.weight,
    required this.makerName,
  });
}
