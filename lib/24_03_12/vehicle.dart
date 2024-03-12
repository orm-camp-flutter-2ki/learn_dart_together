class Vehicle {
  String brand;
  String model;
  int releaseYear;

  Vehicle({
    required this.brand,
    required this.model,
    required this.releaseYear
  });

  void getInformation() {
    print('이것의 브랜드는 $brand 이고, $model 모델입니다. 출시 연도는 $releaseYear년 입니다.');
  }
}