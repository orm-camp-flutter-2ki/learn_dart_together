import 'package:learn_dart_together/240312/practice_6/vehicle.dart';

class Car extends Vehicle {

  double distanceDriven; // 주행 거리
  String drivingSystem; // 구동 방식

  Car(super.maker,
      super.model,
      super.year,
      super.numberOfWheels,
      this.distanceDriven,
      this.drivingSystem
      );
}

void main() {
  Car car = Car('제네시스', '모델', 2023, 4, 12.3, '4WD');

}