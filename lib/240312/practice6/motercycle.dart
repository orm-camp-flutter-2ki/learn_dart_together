import 'package:learn_dart_together/240312/practice6/vehicle.dart';

class Motorcycle extends Vehicle{
  Motorcycle({
    required super.maker,
    required super.model,
    required super.year
  });

  @override
  void move() {
    super.move();
    print('오토바이는 아주 빠르게 주행합니다~');
  }
}