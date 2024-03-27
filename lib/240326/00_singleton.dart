class RentCar {
  static final RentCar _instance = RentCar._internal();
  int count = 0;

  void increment() {
    count++;
  }

  // 기본생성자는 클래스 내부에 생성자 정의가 없어야 함
  // private 생성자이므로 외부에서 인스턴스 생성을 할 수 없게 함
  RentCar._internal();

  // 기본생성자를 factory 로 만들어 줌
  factory RentCar.getInstance() {
    return _instance;
  }
}
