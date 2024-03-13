import 'package:learn_dart_together/orm_240312/vehicle.dart';

class Car extends Vehicle {
  final int numSeats;

  Car(super.maker, super.model, super.year, this.numSeats);

  @override
  String toString() => 'Car($maker, $model, $year, $numSeats)';
}
