import '../240315/practice/book.dart';

// 제네릭이 없는 Pocket 클래스
// class Pocket {
//   Object? _data;
//
//   void put(Object data) {
//     _data = data;
//   }
//
//   Object? get() {
//     return _data;
//   }
// }

// 제네릭을 사용한 Pocket 클래스
// class Pocket<E> {
//   E? data;
//   void put(E data) {
//     data = data;
//   }
//
//   E? get() {
//     return data;
//   }
// }

// 제네릭에 제약을 추가한 Pocket 클래스
class Pocket<E extends Book> {
  E? data;
  void put(E data) {
    data = data;
  }

  E? get() {
    return data;
  }
}

void main() {
  // 타입의 구분없이 객체가 변경될 수 있어 위험하다.
  // final wrong = Pocket();
  // wrong.put(true);
  // wrong.put('aa');
  // wrong.put(111);

  final ok = Pocket();
  List<int> list = [1, 2, 3, 4];
}