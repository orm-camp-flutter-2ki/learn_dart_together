import 'package:learn_dart_together/240312/Vehicle.dart';

class Truck extends Vehicle {
  bool loaded;

  Truck(super.maker, super.model, super.year) : loaded = false;
}

@override
void drive() {
  print('트럭이 간다.');
}
