class Vehicle {
  String _make;
  String _model;
  int _year;

  Vehicle(this._make, this._model, this._year);

  void sound() => print('탈것탈것');
}

class Car extends Vehicle {
  int _remainOil;

  Car(super.make, super.model, super.year, this._remainOil);

  @override
  void sound() => print('부릉부릉');

  void refuelingTen() => _remainOil += 10;
}

class ElectricCar extends Car {
  ElectricCar(super.make, super.model, super.year, super.remainOil);

  @override
  void sound() => print('치지지직');

  @override
  void refuelingTen() => print("전기를 충전하세요.");
}

class Truck extends Vehicle {
  int _weight = 0;

  Truck(super.make, super.model, super.year);

  @override
  void sound() => print('뿌릉뿌릉');

  void load(int loadWeight) => _weight += loadWeight;
}

// void main() {
//   var ve = Vehicle("_make", "_model", 1234);
//   var car = Car("make", "model", 1234, 100);
//   car.sound();
// }
