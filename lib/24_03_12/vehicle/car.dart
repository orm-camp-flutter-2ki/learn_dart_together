import 'package:learn_dart_together/24_03_12/vehicle/vehicle.dart';

class Car extends Vehicle {
  Car(super.maker, super.model, super.year);

  @override
  void running(Vehicle vehicle) {
    super.running(vehicle);
    print('승용차를 세웁니다');
  }
}

void main() {
  Car car = Car('현대', '소나타', 2000);
  car.running(car);
}
