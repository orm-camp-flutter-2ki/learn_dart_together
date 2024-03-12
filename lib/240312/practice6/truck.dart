import 'package:learn_dart_together/240312/practice6/vehicle.dart';

class Truck extends Vehicle {
  int _carriedWeight = 0;

  Truck({
    required super.maker,
    required super.model,
    required super.year,
    required int carriedWeight
  }) : _carriedWeight = carriedWeight;

  set carriedWeight(int value) {
    _carriedWeight = value;
  }

  @override
  void move() {
    super.move();
    print('트럭은 느리게 주행합니다~');
  }

  void printCarriedWeight() {
    if (_carriedWeight == 0) {
      print('이 트럭은 화물을 적재하고 있지 않네요.');
      return;
    }
    print('이 트럭은 화물을 ${_carriedWeight}kg 적재 중이네요.');
  }
}