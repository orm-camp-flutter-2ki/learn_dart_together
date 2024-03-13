import 'package:learn_dart_together/24_03_13/asset.dart';

abstract class TangibleAsset extends Asset {
  String color;

  TangibleAsset(super.name, super.price, this.color);

  @override
  String generateDescription();
}
