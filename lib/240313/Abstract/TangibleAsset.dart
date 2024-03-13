
import 'package:learn_dart_together/240313/Abstract/Asset.dart';
import 'package:learn_dart_together/240313/Interface/Thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  int price;
  String color;
  String makerName;

  String get assetCode {
    return makerName + color + name + price.toString();
  }

  TangibleAsset({
    required super.owner,
    required super.productionYear,
    required this.name,
    required this.price,
    required this.color,
    required this.makerName
  });

  void repair() {
    print('수리완료');
  }

  void wash() {
    print('세척완료');
  }
}
