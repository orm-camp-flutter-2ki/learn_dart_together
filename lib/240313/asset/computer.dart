import 'package:learn_dart_together/240313/asset/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required super.weight,
  });
}
