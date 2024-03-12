import 'car.dart';

class Truck extends Car{
  String cdl; // commercial driver's license (CDL) 화물차 운전 전용 라이센스라고 하네요

  Truck({required super.maker, required super.model, required super.year, required super.registrationTax, required this.cdl});
}