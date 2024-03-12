class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);

  void move() {
    print('$maker 회사의 $model이 나아갑니다.');
  }
}
