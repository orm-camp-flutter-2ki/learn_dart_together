import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(super.name, super.price, super.color, super.weight, this.makerName);

  @override
  String generateDescription() {
    return '이번에 소개할 컴퓨터는 $name입니다. 가격은 ${super.valuationPrice}원이며, 색상은 '
        '${super.color}입니다. 무게는 ${super.weight}이며, 제조사는 $makerName입니다.';
  }
}
