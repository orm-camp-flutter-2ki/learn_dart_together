import 'package:learn_dart_together/240313/Thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _assetWeight;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required double assetWeight,
  }) : _assetWeight = assetWeight;

  @override
  set weight(double weight) {
    _assetWeight = weight;
  }

  @override
  double get weight {
    return _assetWeight;
  }
}
