import '../practice_2/asset.dart';

abstract class TangibleAsset extends Asset {
  String name;
  String color;
  int price;

  TangibleAsset(
    this.name,
    this.color,
    this.price,
  );
}
