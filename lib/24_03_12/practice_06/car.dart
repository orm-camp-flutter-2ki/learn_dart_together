import 'package:learn_dart_together/24_03_12/practice_06/vehicle.dart';

class Car extends Vehicle {
  String licensePlate;

  Car({
    required super.maker,
    required super.model,
    required super.year,
    required this.licensePlate,
  });
}
