import 'package:learn_dart_together/orm_240312/vehicle.dart';

class Car extends Vehicle {
  final int numSeats;

  const Car(String maker, String model, int year, this.numSeats)
      : super(maker, model, year);

  @override
  String toString() => 'Car($maker, $model, $year, $numSeats)';
}
