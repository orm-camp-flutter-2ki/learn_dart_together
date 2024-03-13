import 'package:learn_dart_together/24_03_13/asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class TangibleAsset extends Asset implements Thing { // abstract 를 붙여서 추상클래스 생성
  int price;
  String color;
  double _weight;

  TangibleAsset({
    required super.name,
    required super.ownership,
    required super.value,
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

  void buy(); // 추상메서드 1

  void sell(); // 추상메서드 2
}

