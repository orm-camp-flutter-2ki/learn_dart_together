// 싱글턴 패턴
class RentCar {
  static final RentCar _instance = RentCar._internal();

  int _count = 0;

  RentCar._internal();

  factory RentCar.getInstance() {
    return _instance;
  }

  void increment() {
    _count++;
  }
}

void main() {
  final car1 = RentCar.getInstance();
  final car2 = RentCar.getInstance();

  car1.increment();

  print(identical(car1, car2));

  print(car2._count);
}