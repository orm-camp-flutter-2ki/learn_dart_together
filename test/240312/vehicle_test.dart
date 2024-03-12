import 'package:learn_dart_together/240312/vehicle/car.dart';
import 'package:learn_dart_together/240312/vehicle/motorcycle.dart';
import 'package:learn_dart_together/240312/vehicle/truck.dart';
import 'package:test/test.dart';

void main() {
  group('Vehicle 테스트', () {
    test('car 테스트', () {
      Car car = Car('BMW', '3Series', 2018, 3);
      car.drive();
    });
    test('truck 테스트', () {
      Truck truck = Truck('Hyundai', 'Porter', 2015);
      truck.getLoaded();
      expect(truck.loaded, equals(true));
      truck.offLoaded();
      expect(truck.loaded, equals(false));
    });
    test('motorcycle 테스트', () {
      Motorcycle motor = Motorcycle('Honda', 'Cbr250r', 2010);
      motor.drive();
    });
  });
}
