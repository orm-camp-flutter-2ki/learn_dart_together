// Thing 인터페이스 정의
abstract interface class Thing {
  double get weight; // 무게를 얻는 getter
  set weight(double value); // 무게를 설정하는 setter
}

// WeightedObject 클래스는 Thing 인터페이스를 구현
class WeightedObject implements Thing {
  double _weight = 0.0; // 무게를 저장할 private 변수

  // weight getter
  @override
  double get weight => _weight;

  // weight setter
  @override
  set weight(double value) {
    // if (value < 0) {
    //   throw ArgumentError('무게는 음수일 수 없습니다.'); // 음수 무게 예외 처리
    // }
    _weight = value; //이 value 는 weight에 새로운 값이 올 때 들어온다.
  }
}

void main() {
  WeightedObject obj = WeightedObject(); // WeightedObject의 인스턴스 생성
  obj.weight = 10.5; // 무게 설정
  print(obj.weight); // 무게 출력
}