import 'package:learn_dart_together/240313/practice_3/thing.dart';

import '../practice_2/asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  String color;
  int price;

  // 보증 만료 기간
  String warrantyExpiredYear;
  String warrantyExpiredMonth;
  String warrantyExpiredDay;

  TangibleAsset(
    this.name,
    this.color,
    this.price,
    this.warrantyExpiredYear,
    this.warrantyExpiredMonth,
    this.warrantyExpiredDay,
  );

  String rental() {
    String warrantyExpiredDate =
        '$warrantyExpiredYear$warrantyExpiredMonth$warrantyExpiredDay';

    int dateDifference = int.parse(DateTime.now()
        .difference(DateTime.parse(warrantyExpiredDate))
        .inDays
        .toString());

    if (dateDifference > 0) {
      return '보증 기간이 만료되었습니다.';
    }

    return '대여가 가능합니다.';
  }
}
