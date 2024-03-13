import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String os;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required super.makerName,
    required super.owner,
    required super.productionYear,
    required super.weight,
    required this.os
  });
}