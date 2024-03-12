import 'package:learn_dart_together/240312/Inherit/Vehicle.dart';

class Car extends Vehicle {
  Car(super.maker, super.model, super.year);

  @override
  void move() {
    super.move();
    print("차가 지나갑니다");
  }
}
