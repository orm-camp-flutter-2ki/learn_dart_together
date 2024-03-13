import 'package:learn_dart_together/0312/04/vehicle.dart';

class Truck extends Vehicle {

  final int cargoCapacity;

  Truck(super.maker, super.model, super.year, super.wheel, this.cargoCapacity);

  void loadCargo() {
    print('화물을 실었습니다.');
  }
  void unloadCargo() {
    print('화물을 내렸습니다.');
  }
}