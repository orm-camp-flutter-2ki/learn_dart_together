class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle({required this.maker, required this.model, required this.year});
}

class Car extends Vehicle {
  Car({required super.maker, required super.model, required super.year});
}

class Truck extends Vehicle {
  Truck({required super.maker, required super.model, required super.year});
}

class Motorcycle extends Vehicle {
  Motorcycle({required super.maker, required super.model, required super.year});
}
