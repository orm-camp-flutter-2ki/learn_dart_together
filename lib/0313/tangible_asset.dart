import 'Asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {

  double _weight;
  String _color;

  TangibleAsset(super.type, this._weight, this._color);

  @override
  double get weight => _weight;
  @override
  String get color => _color;

  @override
  set color(String color) {
    _color = color;
  }
  @override
  set weight(double weight) {
    _weight = weight;
  }
}