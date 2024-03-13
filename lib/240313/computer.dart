import 'package:learn_dart_together/240313/tangibleasset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(
      {required super.name,
      required super.price,
      required super.color,
      required super.weight,
      required this.makerName});
}
