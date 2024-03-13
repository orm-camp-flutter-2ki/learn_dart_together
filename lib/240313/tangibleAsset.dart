import 'dart:ffi';

import 'package:learn_dart_together/240313/asset.dart';
import 'package:learn_dart_together/240313/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  int price;
  String color;
  double _weight;

  TangibleAsset({
    required this.name,
    required this.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  set weight(double thingValue) {
    _weight = thingValue;
    return;
  }

  @override
  double get weight => _weight;
}
