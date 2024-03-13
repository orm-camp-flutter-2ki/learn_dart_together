// Vehicle 클래스 정의
class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle(this.maker, this.model, this.year);
}

// Car 클래스 정의 - Vehicle 클래스의 하위 클래스
class Car extends Vehicle {
  int numOfDoors; // 문의 수
  Car(super.maker, super.model, super.year, this.numOfDoors);
  // 메소드
  void honk() {
    print('Beep beep!');
  }
}

// Truck 클래스 정의 - Vehicle 클래스의 하위 클래스
class Truck extends Vehicle {
  double payloadCapacity; // 화물 용량
  Truck(super.maker, super.model, super.year, this.payloadCapacity);
  // 메소드
  void loadCargo() {
    print('Cargo loaded!');
  }
}

// Motorcycle 클래스 정의 - Vehicle 클래스의 하위 클래스
class Motorcycle extends Vehicle {
  String type; // 오토바이 종류 (예: 스포츠, 크루저 등)
  Motorcycle(super.maker, super.model, super.year, this.type);
  // 메소드
  void wheelie() {
    print('Performing a wheelie!');
  }
}

void main() {
  // Car 객체 생성 및 초기화
  Car myCar = Car('Toyota', 'Corolla', 2022, 4);
  myCar.honk();
  print('Car: ${myCar.maker} ${myCar.model} ${myCar.year}, ${myCar.numOfDoors} doors');

  // Truck 객체 생성 및 초기화
  Truck myTruck = Truck('Ford', 'F-150', 2020, 2000);
  myTruck.loadCargo();
  print('Truck: ${myTruck.maker} ${myTruck.model} ${myTruck.year}, Payload Capacity: ${myTruck.payloadCapacity} lbs');

  // Motorcycle 객체 생성 및 초기화
  Motorcycle myMotorcycle = Motorcycle('Harley-Davidson', 'Sportster', 2021, 'Sport');
  myMotorcycle.wheelie();
  print('Motorcycle: ${myMotorcycle.maker} ${myMotorcycle.model} ${myMotorcycle.year}, Type: ${myMotorcycle.type}');
}