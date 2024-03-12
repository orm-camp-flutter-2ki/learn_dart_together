class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle({
    required this.maker,
    required this.model,
    required this.year
  });

  void move() {
    print('부릉부릉~ $maker의 $model이/가 지나갑니다~');
  }
}