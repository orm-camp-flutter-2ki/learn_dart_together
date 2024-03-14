import 'package:learn_dart_together/0312/vehicle.dart';

class Truck extends Vehicle {
  bool freight = false;

  Truck({
    required super.maker,
    required super.model,
    required super.year,
  });

  void freightCheck() {
    if (freight) {
      print('화물이 있습니다.');
      return;
    }
    print('화물이 없습니다.');
  }
}
