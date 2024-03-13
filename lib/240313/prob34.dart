import 'prob2.dart';

//thing

abstract interface class Thing {
  double getWeight();

  void setWeight(double value);
}

abstract class TangibleAsset extends Asset implements Thing { //Tangible Asset에서 interface thing 의 내용을 구현
  String name;
  int price;
  String color;
  double weight;

  TangibleAsset({
      required this.name,
      required this.price,
      required this.color,
      required this.weight
  });

  @override
  double getWeight() {
    return weight;
  }
}
