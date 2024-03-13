import 'package:learn_dart_together/240313/Abstract/Asset.dart';

abstract class IntangibleAsset extends Asset {
  String name;
  String makerName;

  IntangibleAsset({
    required super.owner,
    required super.productionYear,
    required this.name,
    required this.makerName,
  });
}
