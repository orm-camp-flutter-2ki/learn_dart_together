import 'package:learn_dart_together/24_03_13/tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.weight,
    required super.price,
    required super.name,
    required super.color,
    required this.makerName,
  });
}
