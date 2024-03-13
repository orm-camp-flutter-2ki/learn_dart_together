class Vehicle {

  final String maker;
  final String model;
  final int year;
  final int wheel;

  Vehicle(this.maker, this.model, this.year, this.wheel);

  void startEngine() {
    print('시동을 걸었습니다.');
  }

  void stopEngine() {
    print('시동을 껐습니다.');
  }
}