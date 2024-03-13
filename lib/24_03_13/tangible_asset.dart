import 'package:learn_dart_together/24_03_13/asset.dart';

abstract class TangibleAsset extends Asset { // abstract 를 붙여서 추상클래스 생성
  int price;
  String color;

  TangibleAsset({
    required super.name,
    required super.ownership,
    required super.value,
    required this.price,
    required this.color
  });

  void buy(); // 추상메서드 1

  void sell(); // 추상메서드 2
}

