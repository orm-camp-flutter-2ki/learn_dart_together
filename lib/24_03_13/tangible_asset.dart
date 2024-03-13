import 'package:learn_dart_together/24_03_12/book.dart';

import 'asset.dart';

/// 유형자산
abstract class TangibleAsset extends Asset {
  String color;

  TangibleAsset(
    this.color, {
    required super.name,
    required super.price,
  });
}
