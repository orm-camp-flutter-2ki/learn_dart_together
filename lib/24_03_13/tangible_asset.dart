import 'package:learn_dart_together/24_03_13/asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required double weight,
  }) : _weight = weight;
}
