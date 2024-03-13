import 'package:learn_dart_together/24_03_13/asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset(
    super.name,
    super.price,
    this.color,
    this._weight,
  );

  @override
  String system() => '${super.system()}, 색상: $color';

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
