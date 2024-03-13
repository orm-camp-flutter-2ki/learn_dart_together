import '../practice_2/asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  String color;
  int price;

  TangibleAsset(
    this.name,
    this.color,
    this.price,
  );
}
