import 'package:learn_dart_together/240312/car.dart';
import 'package:learn_dart_together/240312/motorcycle.dart';
import 'package:learn_dart_together/240312/truck.dart';
import 'package:test/test.dart';

void main() {
  test('Vehicle Test', () {
    Car car = Car('현대', '소나타', 2020);
    car.speed();
    Truck truck = Truck('볼보', '트럭', 2010);
    truck.speed();
    Motocycle motocycle = Motocycle('혼다', '바이크', 2000);
    motocycle.speed();
  });
}
