// 6번문제
//Vehicle 클래스를 만들고 maker, model 및 year와 같은 속성을 포함합니다.
// Car, Truck 및 Motorcycle와 같은 Vehicle 클래스의 하위 클래스를 만듭니다.
// 각 하위 클래스에 고유한 속성 및 메서드를 추가합니다.

class Vehicle {
  String maker;
  String model;
  String year;

  Vehicle(this.maker, this.model, this.year);

  void sayMaker() {
    print('type:${this.maker}');
  }

  void sayModel() {
    print('sound:${this.model}');
  }
}

class Car extends Vehicle {
  Car(super.maker, super.model, super.year);

  @override
  void sayMaker() {
    print('type:${super.maker}');
  }
}

void main() {
  Car car = Car('테슬라', 'X', '2020');
  car.sayMaker();
  car.sayModel(); //정의 다시 안해도 잘 작동되는군~
}
