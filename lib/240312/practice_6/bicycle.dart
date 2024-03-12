import 'package:learn_dart_together/240312/practice_6/vehicle.dart';

class Bicycle extends Vehicle {
  bool hasBasket;
  double weight;

  Bicycle(
    super.maker,
    super.model,
    super.year,
    super.numberOfWheels,
    this.hasBasket,
    this.weight,
  );
}