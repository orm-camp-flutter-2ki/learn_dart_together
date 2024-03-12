import 'package:learn_dart_together/orm_240312/truck.dart';
import 'package:learn_dart_together/orm_240312/vehicle.dart';

import 'car.dart';

class Motorcycle extends Vehicle {

  final bool hasSidecar;

Motorcycle(super.maker, super.model, super.year, this.hasSidecar);

@override
String toString() => 'Motorcycle($maker, $model, $year, $hasSidecar)';
}

void main() {
  Car car = Car('Hyundai', 'gv80', 2022, 5);
  Truck truck = Truck('KIA', 'Bonggo 3 ev', 2024, 1500.0);
  Motorcycle motorcycle = Motorcycle('Honda', 'Goldwing', 2021, true);

  print(car);
  print(truck);
  print(motorcycle);
}