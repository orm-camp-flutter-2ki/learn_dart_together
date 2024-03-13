import 'package:learn_dart_together/24_03_13/asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Asset implements Thing{
  String _color;
  double _weight;

  TangibleAsset(super.name, super.price, this._color, this._weight);

  @override
  String generateDescription();

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;

  get color => _color;
}
