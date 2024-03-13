import 'package:learn_dart_together/24_03_12/ex4.%20vehicle/vehicle.dart';

class Car extends Vehicle {
  double registrationTax; // 개인 소유의 자동차를 보유할 때 내는 세금

  Car({
    required super.maker,
    required super.model,
    required super.year,
    required this.registrationTax
  });
}