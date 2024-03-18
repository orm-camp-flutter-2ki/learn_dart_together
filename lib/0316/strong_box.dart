// [?] 다음 조건을 만족하는 StrongBox 클래스 정의하기
// 1. 금고에 담는 인스턴스 타입은 미정
// 2. put() 메서드로 인스턴스를 저장하고 get()메서드로 인스턴스를 얻을 수 있음
// 3. get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 된다.
class strongBox<E> {
  /// field
  /// 금고에 담는 인스턴스 타입
  E? _dataType;

  /// put
  /// 인스턴스를 저장하는 메서드
  void put(E dataValue) {
    _dataType = dataValue;
  }

  /// getter
  /// 인스턴스를 얻는 메서드
  E? get() {
    return _dataType;
  }
}

void main() {}
