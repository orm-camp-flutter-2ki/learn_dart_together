import 'package:learn_dart_together/0312/vehicle.dart';

class Car extends Vehicle {
  bool airBag = false;

  Car({
    required super.maker,
    required super.model,
    required super.year,
  });

  void airBagNow() {
    if (airBag) {
      print('에어백이 작동합니다.');
      return;
    }
    print('에어백이 고장났습니다.');
  }
}
