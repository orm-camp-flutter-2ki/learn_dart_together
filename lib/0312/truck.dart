import 'package:learn_dart_together/0312/vehicle.dart';

class Truck extends Vehicle {
  bool freight = false;

  Truck({
    required super.maker,
    required super.model,
    required super.year,
  });

  void freightCheck() {
    freight ? print('화물이 있습니다.') : print('화물이 없습니다..');
  }
}
