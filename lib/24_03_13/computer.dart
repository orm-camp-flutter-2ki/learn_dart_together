import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Computer extends TangibleAsset {
  final String _makerName;

  Computer({required String name, required int price, required String color, required int weight, required String makerName})
      : _makerName = makerName, super(name, price, color, weight);

  @override
  String generateDescription() {
    return '이번에 소개할 컴퓨터는 $name입니다. 가격은 ${super.valuationPrice}원이며, 색상은 '
        '${super.color}입니다. 무게는 ${super.weight}이며, 제조사는 $_makerName입니다.';
  }
}
