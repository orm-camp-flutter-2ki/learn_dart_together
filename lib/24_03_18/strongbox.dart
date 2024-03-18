class StrongBox<E> {
  E? _data;

  void put(E data) {
    _data = data;
  }

  get() {
    return _data;
  } // 별도로 타입 캐스팅을 사용하지 않아도 된다는 말이 그대로 리턴하면 된다는 의미인가요?
}