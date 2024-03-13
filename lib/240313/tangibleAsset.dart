import 'package:learn_dart_together/240313/asset.dart';
import 'package:learn_dart_together/240313/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight; //getter setter을 쓰려면 private울 써야 함 일반적인 개념에서

  TangibleAsset({required this.price,
      required this.color,
      required super.name,
      required double weight, // = super
      }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
