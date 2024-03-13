import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

abstract class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.color,
    required super.name,
    required super.ownership,
    required super.price,
    required super.value,
    required super.weight,
    required this.makerName,
  });
}