// [?] 다음 조건을 만족하는 StrongBox 클래스 정의하기
// 1. 금고에 담는 인스턴스 타입은 미정
// 2. put() 메서드로 인스턴스를 저장하고 get()메서드로 인스턴스를 얻을 수 있음
// 3. get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 된다.

import 'package:learn_dart_together/0318/key_type.dart';

class StrongBox<T> {
  /// field
  /// 금고에 담는 인스턴스의 타입 (단 1개)
  T? _dataType;
  final KeyType _keyType;
  int _tryCount = 0;

  StrongBox({required KeyType keyType}) : _keyType = keyType;

  /// put
  /// dataType 인스턴스를 저장하는 메서드
  void putDataType(T dataValue) => _dataType = dataValue;

  /// getter
  /// keyTypeCount를 통해 _dataType을 얻는 메서드
  T? getKeyType() {
    _tryCount++;
    if (_tryCount < typeCountLimit()) {
      return null;
    }
    return _dataType;
  }

  /// key type별 횟수 제한을 return하는 메서드
  int typeCountLimit() {
    switch (_keyType) {
      case KeyType.padlock:
        return padlockCountLimit;
      case KeyType.button:
        return buttonCountLimit;
      case KeyType.dial:
        return dialCountLimit;
      case KeyType.finger:
        return fingerCountLimit;
    }
  }

  @override
  String toString() {
    return '$_dataType';
  }
}

void main() {}
