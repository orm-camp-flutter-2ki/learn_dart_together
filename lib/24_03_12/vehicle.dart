class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);

  void move() {
    print('$model 타고 이동중...');
  }

  void stop() {
    print('정지!');
  }
}
