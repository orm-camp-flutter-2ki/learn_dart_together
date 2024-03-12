class Vehicle {
  String maker;
  String model;
  int year;
  int price;

  Vehicle(this.maker, this.model, this.year, this.price);

  void CarSale(int a) {
    print('$maker의 $model을/를 세일 중입니다.');
    price = (price * (a / 100)).toInt();
  }
}

class Car extends Vehicle {
  Car(
    super.maker,
    super.model,
    super.year,
    super.price,
  ) {
    String color;
    double weight;
    double enginePower;
    double standardGearRatio;
    bool ev;
  }
}

class Truck extends Vehicle {
  Truck(super.maker, super.model, super.year, super.price) {
    int price;
    String color;
    double weight;
    double enginePower;
    double standardGearRatio;
    bool ev;
    double maxPayload;
  }
}

//탈 것
//Vehicle 클래스를 만들고 maker, model 및 year와 같은 속성을 포함합니다.
//Car, Truck 및 Motorcycle와 같은 Vehicle 클래스의 하위 클래스를 만듭니다.
//각 하위 클래스에 고유한 속성 및 메서드를 추가합니다.
