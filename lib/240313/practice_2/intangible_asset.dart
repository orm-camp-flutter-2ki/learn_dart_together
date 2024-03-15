import 'package:learn_dart_together/240313/practice_3/thing.dart';

import 'asset.dart';

// 무형자산
abstract class IntangibleAsset extends Asset {
  String ownerName;

  IntangibleAsset({
    required super.price,
    required super.name,
    required this.ownerName,
  });

  // 가치 평가
  void value();
}
