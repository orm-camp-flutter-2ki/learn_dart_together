class Vehicle {
  String maker;
  String model;
  int year;
  bool ride = false;

  Vehicle({
    required this.maker,
    required this.model,
    required this.year,
  });

  void vehicleInfo() {
    print('[정보] 브랜드:$maker, 모델:$model, 출시년도:$year');
  }

  void rideNow() {
    ride ? print('차를 타고 이동중입니다..') : print('차에서 내렸습니다.');
  }
}
