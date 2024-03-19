// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨
import 'enum.dart';

//파일 따로 빼서 import 처리 해주면 됨
// enum 이라는 키워드를 선언하면 static 처럼 사용할 수 있음.
// static 처리할수 있는 방법 ???
// enum KeyType {
//   padlock, button, dial, finger
// }

class StrongBox<E, Key> {
  int count = 0;
  E? _data;
  KeyType _variable;

  StrongBox(E data, KeyType variable)
      : _data = data,
        _variable = variable;

  void put(E data) {
    _data = data;
  }

  E? get() {
    count++;
    switch (_variable) {
      case KeyType.button:
        if (count < 10000) {
          return null;
        }
        return _data;
      case KeyType.dial:
        if (count < 30000) {
          return null;
        }
        return _data;

      case KeyType.finger:
        if (count < 1000000) {
          return null;
        }
        return _data;
// dart문에서는 break 을 쓰지 않아도 된다.
      case KeyType.padlock:
        if (count < 1024) {
          return null;
        }
        return _data;
    }
    return _data;
  }
}
