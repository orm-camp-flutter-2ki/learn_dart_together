import 'package:learn_dart_together/240312/vehicle/vehicle.dart';

class Motorcycle extends Vehicle {
  Motorcycle(super.maker, super.model, super.year);

  @override
  void drive() {
    print('오토바이가 간다.');
  }
}
