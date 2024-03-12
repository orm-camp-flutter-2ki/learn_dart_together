import 'package:learn_dart_together/24_03_12/vehicle/vehicle.dart';

class Truck extends Vehicle{
  Truck(super.maker, super.model, super.year);

  @override
  void running(Vehicle vehicle) {
    super.running(vehicle);
    print('트럭을 세웁니다');
  }
}

void main() {
  Truck truck = Truck('볼보', 'Volvo FH', 2020);
  truck.running(truck);
}