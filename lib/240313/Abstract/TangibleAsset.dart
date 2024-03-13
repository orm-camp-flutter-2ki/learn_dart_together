
import 'package:learn_dart_together/240313/Abstract/Asset.dart';
import 'package:learn_dart_together/240313/Interface/Thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
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
