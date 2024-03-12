void main(){
  Car car = Car('Kia', 'Telluride', 2024);
  car.oiling();
  Truck truck = Truck('Kia', 'Telluride', 2024);
  truck.oiling();
  Motorcycle motorcycle = Motorcycle('Kia', 'Telluride', 2024);
  motorcycle.oiling();
}
class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);

  void oiling(){
    print('가솔린을 먹습니다.');
  }
}

class Car extends Vehicle{
  Car(super.maker, super.model, super.year);


}
class Truck extends Vehicle{
  Truck(super.maker, super.model, super.year);

  @override
  void oiling(){
    print('LPG 가스를 먹습니다.');
  }
}
class Motorcycle extends Vehicle{
  Motorcycle(super.maker, super.model, super.year);
}
