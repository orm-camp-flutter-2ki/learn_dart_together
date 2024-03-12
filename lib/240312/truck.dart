import 'vehicle.dart';

class Truck extends Vehicle {
  // 적재여부, 용량
  bool loadingStatus = false;
  int loadCapacity;

  Truck({required super.maker, required super.model, required super.year, required this.loadingStatus, required this.loadCapacity});
}
