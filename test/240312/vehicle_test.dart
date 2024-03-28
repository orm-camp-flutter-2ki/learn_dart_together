import 'package:learn_dart_together/240312/vehicle/Car.dart';
import 'package:learn_dart_together/240312/vehicle/motorcycle.dart';
import 'package:learn_dart_together/240312/vehicle/truck.dart';
import 'package:test/test.dart';

void main() {
  test('Vehicle Test', () {
    Car car = Car(maker: '페라리', model: '911', year: 2023);
    Truck truck = Truck(maker: '볼보', model: 'FH', year: 2020, load: false);
    Motocycle motocycle =
        Motocycle(maker: '할리데이비슨', model: '스트리트 글라이드', year: 2024);

    car.move();
    car.modelYear();
    truck.move();
    truck.modelYear();
    truck.loadCheck();
    motocycle.move();
    motocycle.modelYear();
  });
}
