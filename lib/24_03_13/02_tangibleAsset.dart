import '01_asset.dart';
import '07_thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  double _weight;
  String color;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
