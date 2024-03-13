
import 'package:learn_dart_together/240313/Abstract/Asset.dart';

abstract class TangibleAsset extends Asset {
  String name;
  int pirce;
  String color;
  String makerName;

  TangibleAsset({
    required this.name,
    required this.pirce,
    required this.color,
    required this.makerName,
    required super.owner,
    required super.productionYear
  });
}
