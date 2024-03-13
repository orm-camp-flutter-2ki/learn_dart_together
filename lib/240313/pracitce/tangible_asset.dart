import 'thing.dart';
import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight;

  TangibleAsset({
      required super.name,
      required this.price,
      required this.color,
      required double weight
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  void disposal() {
    print('자산을 폐기합니다.');
  }
}
