import 'package:learn_dart_together/0312/vehicle.dart';

class Motorcycle extends Vehicle {
  bool helmet = false;

  Motorcycle({
    required super.maker,
    required super.model,
    required super.year,
  });

  void helmetNow() {
    if (helmet) {
      print('헬멧을 착용했습니다.');
      return;
    }
    print('헬멧을 벗었습니다.');
  }
}
