import 'package:learn_dart_together/240313/practice_3/thing.dart';

import '../practice_2/asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  // 보증 만료 기간
  String warrantyExpiredYear;
  String warrantyExpiredMonth;
  String warrantyExpiredDay;

  TangibleAsset(
    super.name,
    super.price,
    this.color,
    this._weight,
    this.warrantyExpiredYear,
    this.warrantyExpiredMonth,
    this.warrantyExpiredDay,
  );

  @override
  double get weight => _weight;

  @override
  set weight(double value) => _weight;


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
