import 'package:learn_dart_together/240312/Vehicle.dart';

class Car extends Vehicle {
  int doorCount;
  Car(super.maker, super.model, super.year, this.doorCount);
}

@override
void drive() {
  print('차가 간다.');
}
