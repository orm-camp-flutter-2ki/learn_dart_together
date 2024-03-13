import 'package:learn_dart_together/240313/practice_3/thing.dart';

import 'asset.dart';

// 무형자산
abstract class IntangibleAsset extends Asset implements Thing {
  String ownerName;

  IntangibleAsset(
    super.price,
    super.name,
    this.ownerName,
  );

  // 가치 평가
  void value();
}
