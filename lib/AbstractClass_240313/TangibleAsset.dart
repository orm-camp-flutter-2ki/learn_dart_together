import 'package:learn_dart_together/AbstractClass_240313/AssetAll.dart';
import 'package:learn_dart_together/AbstractClass_240313/Thing.dart';

abstract class TangibleAsset extends AssetAll implements Thing{
  int price;
  String color;
  int quantity;

  TangibleAsset({
    required super.name,
    required super.code,
    required this.price,
    required this.color,
    required this.quantity,
  });

  void addBuy() {
    quantity++;
    print('구매하다');
  }

}
