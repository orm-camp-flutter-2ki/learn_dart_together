class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);
}

class Car extends Vehicle {
  Car(
    super.maker,
    super.model,
    super.year,
  );
  void key() {
    print('그');
  }
}

class Truck extends Vehicle {
  Truck(
    super.maker,
    super.model,
    super.year,
  );
  void handle() {
    print('랜');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(
    super.maker,
    super.model,
    super.year,
  );
  void pedal() {
    print('저');
  }
}
