import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String os;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  Computer({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required super.owner,
    required super.productionYear,
    required this.os,
    required double weight
  }) : _weight = weight;
}