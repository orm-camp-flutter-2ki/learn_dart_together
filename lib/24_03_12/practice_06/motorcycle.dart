import 'package:learn_dart_together/24_03_12/practice_06/vehicle.dart';

class MotorCycle extends Vehicle {
  String licensePlate;
  bool isWearHelmet;

  MotorCycle({
    required super.maker,
    required super.model,
    required super.year,
    required this.licensePlate,
    required this.isWearHelmet,
  });
}
