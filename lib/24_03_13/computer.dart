import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(super.name, super.price, super.color, this.makerName);

  @override
  String generateDescription() {
    return '이번에 소개할 컴퓨터는 $name입니다. 가격은 $price원이며, 색상은 $color입니다. 제조사는 $makerName입니다.';
  }
}
