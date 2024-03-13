import 'tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(
      {required super.name,
      required super.price,
      required super.color,
      required super.assetWeight,
      required this.makerName});
}
