import 'asset.dart';

abstract class TangibleAsset extends Asset {
  String color;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
  });
}
