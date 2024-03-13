import '02_tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required super.weight,
  });

  @override
  printInfo() {
    print('이름: $name, 가격: $price, 색: $color, 제조사: $makerName, 무게: $weight');
  }
}
