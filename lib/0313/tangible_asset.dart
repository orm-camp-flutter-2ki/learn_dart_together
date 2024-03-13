import 'Asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {

  final double _weight;
  final String _color;

  TangibleAsset(super.type, this._weight, this._color);

  @override
  double get weight => _weight;
  @override
  String get color => _color;

  @override
  set weight(double weight);
  @override
  set color(String color);
}