void main() {
  // 이런 식으로 쓰면 안된다.
  // final no = Pocket();
  //
  // final pocket = Pocket<int>();
  // pocket.put(10);
  // // 아래와 같이 사용하면 다이나믹으로 들어가기 때문에 사용 X
  // List items = [1, 2, 3];

  String string = 'Dart is fun';
  string = 'Hello';
  print(string);
}


class Pocket<E> {
  E? _data;

  void put(E data) {
    data = data;
  }

  E? get() {
    return _data;
  }
}