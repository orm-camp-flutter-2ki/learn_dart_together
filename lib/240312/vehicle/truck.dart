import 'package:learn_dart_together/240312/vehicle/vehicle.dart';

class Truck extends Vehicle {
  bool load;
  Truck({
    required super.maker,
    required super.model,
    required super.year,
    required this.load,
  });

  void loadCheck() {
    if (load == true) {
      print("트럭에 짐이 실려있습니다");
    } else {
      print("트럭에 짐이 없습니다");
    }
  }
}
