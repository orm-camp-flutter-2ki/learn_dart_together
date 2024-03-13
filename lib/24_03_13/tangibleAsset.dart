import 'package:learn_dart_together/24_03_13/thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset(
      {required double weight,
      required super.name,
      required super.price,
      required this.color})
      : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}

