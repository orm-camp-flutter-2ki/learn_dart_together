import 'tangible_asset.dart';
import 'thing.dart';

class Computer extends TangibleAsset implements Thing {
  String makerName;
  double _weight;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required double weight,
  }) : _weight = weight;

  @override
  set weight(double value) {
    _weight = weight;
  }

  @override
  double get weight => _weight;
}
