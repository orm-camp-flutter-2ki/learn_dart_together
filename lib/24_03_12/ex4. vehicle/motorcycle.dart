import 'package:learn_dart_together/24_03_12/ex4.%20vehicle/vehicle.dart';

class Motorcycle extends Vehicle {

  String motorCycleLicense; // 모터 사이클 전용 라이센스

  Motorcycle({required super.maker, required super.model, required super.year, required this.motorCycleLicense});
}