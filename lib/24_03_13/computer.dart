import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Computer extends TangibleAsset{
  String makerName;

  Computer({
    required super.name,
    required super.color,
    required super.price,
    required this.makerName,
  });
}
