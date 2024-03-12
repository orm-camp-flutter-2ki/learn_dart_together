import 'package:learn_dart_together/240312/Inherit/Rectangle.dart';
import 'package:learn_dart_together/240312/Inherit/Vehicle.dart';
import 'package:learn_dart_together/240312/Inherit/car.dart';
import 'package:learn_dart_together/240312/Inherit/motorcycle.dart';
import 'package:learn_dart_together/240312/Inherit/point.dart';
import 'package:learn_dart_together/240312/Inherit/truck.dart';
import 'package:test/test.dart';

void main() {
  test('vehicleTest', () {
    Vehicle car = Car('현대', '소나타', 2005);
    Vehicle motorcycle = Motorcycle('혼다', '오토바이', 2003);
    Vehicle truck = Truck('벤처', '1톤트럭', 2006, false);

    List<Vehicle> vehicle = [car, motorcycle, truck];
    for (int i = 0; i < vehicle.length; i++) {
      vehicle[i].move();
    }
  });
}
