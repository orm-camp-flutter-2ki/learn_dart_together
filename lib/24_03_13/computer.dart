import 'tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(
    super.name,
    super.price,
    super.color,
    this.makerName,
  );

  @override
  String system() {
    return 'PC 재고 관리 = 기종: $name, 가격: $price, 색상: $color, 제조사: $makerName';
  }
}
