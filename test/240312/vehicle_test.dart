import 'package:learn_dart_together/240312/practice6/car.dart';
import 'package:learn_dart_together/240312/practice6/motercycle.dart';
import 'package:learn_dart_together/240312/practice6/truck.dart';
import 'package:test/test.dart';

void main() {
  test('Vehicle Test', () {
    Car car = Car(maker: '현대', model: 'SONATA', year: 2022);
    car.move();

    Motorcycle motorcycle = Motorcycle(maker: '오도방구회사', model: '오도방구', year: 2007);
    motorcycle.move();

    Truck truck = Truck(maker: '트럭회사', model: '트럭트럭', year: 2004, carriedWeight: 200);
    truck.move();
    truck.printCarriedWeight();
    truck.carriedWeight = 0;
    truck.printCarriedWeight();

    expect(truck.carriedWeight, 0);
  });
}