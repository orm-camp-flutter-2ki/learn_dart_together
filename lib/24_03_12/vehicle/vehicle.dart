class Vehicle {
  String maker, model;
  int year;

  Vehicle(this.maker, this.model, this.year);

  void running(Vehicle vehicle) {
    print('${vehicle.maker}의 ${vehicle.model} ${vehicle.year}년식이 출발합니다.');
  }
}