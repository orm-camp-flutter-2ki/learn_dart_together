import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  double _weight;

  @override
  double get weight => _weight;

  double get moonWeight {
    return _weight / 6;
  }

  TangibleAsset({required super.name, required double weight})
      : _weight = weight;
}
