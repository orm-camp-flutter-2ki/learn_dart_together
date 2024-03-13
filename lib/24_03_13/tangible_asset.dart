import 'package:learn_dart_together/24_03_13/asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Asset implements Thing{
  String _color;
  int _weight;

  TangibleAsset(super.name, super.price, this._color, this._weight);

  @override
  String generateDescription();

  @override
  int get weight => _weight;

  @override
  set weight(int weight) => _weight = weight;

  get color => _color;
}
