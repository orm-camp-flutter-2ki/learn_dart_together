import 'package:learn_dart_together/240313/Thing.dart';

import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  double _weight;
  int price;
  String color;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  @override
  void show() {
    super.show();
    print('이름: $name, 가격:$price ,색상:$color ,무게:$_weight');
  }
}
