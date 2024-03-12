import 'package:learn_dart_together/24_03_12/vehicle.dart';

class Motorcycle extends Vehicle {
  Motorcycle(super.maker, super.model, super.year);

  void pullThrottle() {
    print("스로틀을 당기다");
  }
}
