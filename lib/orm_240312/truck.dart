import 'package:learn_dart_together/orm_240312/vehicle.dart';

class Truck extends Vehicle {
  final double cargoCapacity;

  const Truck(String maker, String model, int year, this.cargoCapacity)
      : super(maker, model, year);

  @override
  String toString() => 'Truck($maker, $model, $year, $cargoCapacity)';
}


