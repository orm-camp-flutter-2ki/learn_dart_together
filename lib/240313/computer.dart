import 'package:learn_dart_together/240313/tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.color,
    required super.price,
    required this.makerName,
    required super.weight
  });
}
