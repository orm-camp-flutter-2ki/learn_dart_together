import 'car.dart';

class Truck extends Car {
  String license;

  Truck({required super.maker, required super.model, required super.year, required super.registrationTax, required this.license});
}