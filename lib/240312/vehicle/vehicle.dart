class Vehicle {
  String maker;
  String model;
  int year;

  Vehicle({
    required this.maker,
    required this.model,
    required this.year,
  });

  void move() {
    print('$maker $model이/가 지나갑니다');
  }

  void modelYear() {
    int modelYear = DateTime.now().year - year;
    print('연식은 $modelYear년 입니다');
  }
}
