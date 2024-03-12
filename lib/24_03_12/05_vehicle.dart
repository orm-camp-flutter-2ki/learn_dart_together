class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);
}

class Car extends Vehicle {
  double distance = 10000;
  double driveToday;

  Car(super.maker, super.model, super.year, this.distance, this.driveToday);

  void infoMyCar() {
    double totalDistance = distance + driveToday;

    print('이 차의 메이커는 $maker 입니다.');
    print('이 차의 모델은 $model 입니다.');
    print('총 이동한 거리는 $totalDistance 입니다.');
  }

}

class Motorcycle extends Vehicle {
  double distance = 10000;

  Motorcycle(super.maker, super.model, super.year, this.distance);

  void infoMyMotor() {

  }
}

void main() {
  Car car = Car('Kia', 'K5', 2020, 10000, 120);
  car.infoMyCar();
}
