import 'package:learn_dart_together/24_03_13/thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;

  @override
  double weight;

  TangibleAsset(
      {required super.name,
      required super.price,
      required this.color,
      required this.weight});
}
