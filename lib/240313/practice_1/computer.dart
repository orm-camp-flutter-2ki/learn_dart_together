import 'package:learn_dart_together/240313/practice_1/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(
    super.name,
    super.color,
    super.price,
    super.warrantyExpiredYear,
    super.warrantyExpiredMonth,
    super.warrantyExpiredDay,
    this.makerName,
    this.weight,
  );

  @override
  double weight;
}
