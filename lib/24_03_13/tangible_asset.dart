import 'package:learn_dart_together/24_03_12/book.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

import 'asset.dart';

/// 유형 자산
abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset(
    this.color,
    this._weight, {
    required super.name,
    required super.price,
  });

  @override
  set weight(double value) {
    _weight = value;
  }

  @override
  double get weight => _weight;
}
