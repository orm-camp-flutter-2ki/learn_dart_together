import 'package:learn_dart_together/240312/practice6/vehicle.dart';

class Car extends Vehicle{
  Car({
    required super.maker,
    required super.model,
    required super.year
  });

  @override
  void move() {
    super.move();
    print('자동차는 빠르게 주행합니다~');
  }
}