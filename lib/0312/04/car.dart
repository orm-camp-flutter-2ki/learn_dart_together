import 'package:learn_dart_together/0312/04/vehicle.dart';

class Car extends Vehicle {

  final int doorCnt;
  final bool convertible;

  Car(super.maker, super.model, super.year, super.wheel, this.doorCnt, this.convertible);

  void openRoof() {
    print('지붕을 열었습니다.');
  }
  void closeRoof() {
    print('지붕을 닫았습니다.');
  }
}