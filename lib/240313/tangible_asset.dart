import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  int price;
  String color;

  @override
  double weight;

  TangibleAsset({
    required this.name,
    required this.price,
    required this.color,
    required this.weight,
  });
}