import 'package:learn_dart_together/240313/asset.dart';
import 'package:learn_dart_together/240313/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  // 유형자산
  String color;
  double _weight;

  TangibleAsset({required super.name, required super.price, required this.color, required double weight}) : _weight = weight;

  @override
  set weight(double weight) {
    _weight = weight;
  }

  @override
  double get weight => _weight;
}
