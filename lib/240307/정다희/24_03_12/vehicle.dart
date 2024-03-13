class Vehicle {

  String maker;
  String model;
  int year;

  Vehicle({required this.maker, required this.model, required this.year});


}


class Car extends Vehicle {
  int maxSpeed;
  Car({required this.maxSpeed, required super.maker, required super.model, required super.year});
  void checkMaxSpeed(){
    print('이 차의 최대 속력은 $maxSpeed 입니다');
  }
}

class Motorcycle extends Vehicle{

  int wheels;
  Motorcycle({required super.maker, required super.model, required super.year, required this.wheels});

  void checkWheels(){
    print('이 오토바이의 바퀴 갯수는 $wheels 입니다');
  }
}

