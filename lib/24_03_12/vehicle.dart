class Vehicle {
  String maker;
  String model;
  int year;
  int speed;

  Vehicle(
    this.maker,
    this.model,
    this.year,
    this.speed,
  );

  void accelerate(int speed) {
    speed += 5;
  }

  void decelerate(int speed) {
    speed -= 5;
  }

  void stop() {
    speed = 0;
  }
}

class Car extends Vehicle {
  Car(
    super.maker,
    super.model,
    super.year,
    super.speed,
  );

  void openTrunk() {
    print('트렁크를 엽니다.');
  }
}

class Truck extends Vehicle {
  Truck(
    super.maker,
    super.model,
    super.year,
    super.speed,
  );

  void takePackage() {
    print('물건을 싣습니다.');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(
    super.maker,
    super.model,
    super.year,
    super.speed,
  );

  void liftFrontWheel() {
    print('앞 바퀴를 듭니다.');
  }
}
