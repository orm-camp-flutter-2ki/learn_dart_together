class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);
}

class Car extends Vehicle {
  int seat;

  Car({
    required String maker,
    required String model,
    required int year,
    required this.seat,
  }) : super(maker, model, year);
}

class Truck extends Vehicle {
  int size;

  Truck({
    required String maker,
    required String model,
    required int year,
    required this.size,
  }) : super(maker, model, year);
}

class Motorcycle extends Vehicle {
  int wheels;

  Motorcycle({
    required String maker,
    required String model,
    required int year,
    required this.wheels,
  }) : super(maker, model, year);
}
