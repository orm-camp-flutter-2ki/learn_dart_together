import 'package:learn_dart_together/24_03_12/vehicle.dart';

class Car extends Vehicle {
  String name;
  int seatCount;
  int occupied;

  Car({
    required super.brand,
    required super.model,
    required super.releaseYear,
    required this.name,
    required this.seatCount,
    required this.occupied
  });

  void getInCar(int peopleCount) {
    if (seatCount >= occupied + peopleCount) {
      print('$peopleCount명이 탑승했습니다.');
      occupied += peopleCount;
    } else {
      print('자리가 부족합니다. ${seatCount - occupied}명만 탑승이 가능합니다.');
    }
  }

}