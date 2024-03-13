import 'package:learn_dart_together/240313/practice_1/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(
    super.name,
    super.price,
    super.color,
    super.weight,
    super.warrantyExpiredYear,
    super.warrantyExpiredMonth,
    super.warrantyExpiredDay,
    this.makerName,
  );
}
