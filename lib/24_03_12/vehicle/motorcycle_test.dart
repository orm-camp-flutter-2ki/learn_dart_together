import 'package:learn_dart_together/24_03_12/vehicle/vehicle.dart';

class Motorcycle extends Vehicle{
  Motorcycle(super.maker, super.model, super.year);

  @override
  void running(Vehicle vehicle) {
    super.running(vehicle);
    print('오토바이를 세웁니다');
  }
}

void main() {
  Motorcycle motorcycle = Motorcycle('야마하', '야마하 YZF-R1', 1998);
  motorcycle.running(motorcycle);
}