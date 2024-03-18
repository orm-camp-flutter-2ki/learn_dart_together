import 'package:learn_dart_together/240318/key_type.dart';

class StrongBox<T> {
  T? _thing;

  // 왜 , final _keyType 써야되냐,,,? 일단 IDE가 하란대로 하긴함...
  final KeyType _keyType;
  int count = 0;

  StrongBox(this._keyType);

  void put(T thing) {
    // _thing 값이 null 이면(thing에 저장된게 없으면) _thing 을 thing에 넣기
    if (_thing == null) {
      _thing = thing;
      print('저장되었습니다!');
    } else {
      print('저장실패');
    }
  }

  T? get() {
    if (_thing != null && count < getMaxCount()) {
      count++;
      // 새로운 thing 값 복사
      T? thing = _thing;
      // _thing에 null 값 할당
      _thing = null;
      print('${thing}을 얻었다!!');
      // thing 값 반환
      return thing;
    } else {
      print('아무것도없어!');
      return null;
    }
  }

//enum + switch 조합 작성해야 효과좋음!
  int getMaxCount() {
    switch (_keyType) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
    }
  }
}
