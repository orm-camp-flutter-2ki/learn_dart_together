import 'package:learn_dart_together/240313/asset.dart';
import 'package:learn_dart_together/240313/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String _color;
  double _weight;

  TangibleAsset({
    required super.name,
    required super.price,
    required String color,
    required double weight,
  }) : _color = color, _weight = weight;

  String get color => _color;

  @override
  double get weight => _weight;

  @override
  set weight(double value) => _weight = value;

  @override
  void printInformation() {
    super.printInformation();
    print('색깔 : $color');
    print('무게 : $weight');
  }
}