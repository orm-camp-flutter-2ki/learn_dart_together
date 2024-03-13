// 가 : Assets(자산)
// 나 : Intangible Assets(무형자산)
// 다 : Patent(특허)

import 'package:learn_dart_together/24_03_13/assets.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Assets implements Thing {
  // 유형 자산
  int price;
  String color;

  TangibleAsset(
    super.name,
    this.price,
    this.color
  );

  void displayInfo();
}
