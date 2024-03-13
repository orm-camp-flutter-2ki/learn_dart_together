import 'package:learn_dart_together/240313/asset.dart';

class InTangibleAsset extends Asset {
  // 무형자산
  int period;
  String field;

  InTangibleAsset({required super.name, required super.price, required this.period, required this.field});
}
