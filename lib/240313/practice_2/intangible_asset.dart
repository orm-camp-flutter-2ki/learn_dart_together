import 'package:learn_dart_together/240313/practice_3/thing.dart';

import 'asset.dart';

// 무형자산
abstract class IntangibleAsset extends Asset implements Thing {
  String ownerName;
  double _weight;

  IntangibleAsset(
    this._weight, {
    required super.price,
    required super.name,
    required this.ownerName,
  });

  @override
  double get weight => _weight;

  @override
  set weight(double value) => _weight;

  // 가치 평가
  void value();
}
