import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

abstract class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.ownership,
    required super.value,
    required super.price,
    required super.color,
    required this.makerName,
  });
}