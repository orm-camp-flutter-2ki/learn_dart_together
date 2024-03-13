import 'package:learn_dart_together/orm_240312/vehicle.dart';

class Truck extends Vehicle {
  final double cargoCapacity;

  Truck(super.maker, super.model, super.year, this.cargoCapacity);

  @override
  String toString() => 'Truck($maker, $model, $year, $cargoCapacity)';
}


