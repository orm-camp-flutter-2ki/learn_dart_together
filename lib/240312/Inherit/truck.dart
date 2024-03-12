import 'package:learn_dart_together/240312/Inherit/Vehicle.dart';

class Truck extends Vehicle {
  bool cargoLoadingYn;

  Truck(super.maker, super.model, super.year, this.cargoLoadingYn);

  @override
  void move() {
    super.move();
    print("트럭이 지나갑니다");
  }
}
