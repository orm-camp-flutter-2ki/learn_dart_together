import 'package:learn_dart_together/240313/asset.dart';

abstract class TangibleAsset extends Asset {
  // 유형자산
  String color;

  TangibleAsset({required super.name, required super.price, required this.color});
}
