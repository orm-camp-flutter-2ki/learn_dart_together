// [?] 다음 조건을 만족하는 StrongBox 클래스 정의하기
// 1. 금고에 담는 인스턴스 타입은 미정
// 2. put() 메서드로 인스턴스를 저장하고 get()메서드로 인스턴스를 얻을 수 있음
// 3. get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 된다.

enum KeyType {
  /// strong box 열쇠의 종류 정ㅊ
  padlock, // 1_024회
  button, // 10_000회
  dial, // 30_000회
  finger, // 1_000_000
}

int padlockCountLimit = 1024;
int buttonCountLimit = 10000;
int dialCountLimit = 1024;
int fingerCountLimit = 1000000;

class StrongBox<T> {
  /// field
  /// 금고에 담는 인스턴스 타입
  T? _dataType;
  KeyType _keyType;

  StrongBox({required KeyType keyType}) : _keyType = keyType;

  /// put
  /// dataType 인스턴스를 저장하는 메서드
  void putDataType(T dataValue) {
    _dataType = dataValue;
  }

  /// getter
  /// keyType 인스턴스를 얻는 메서드
  /// 반복 코드가 너무 많은데 어떻게 줄일 수 없을까....
  T? getKeyType(KeyType keyValue) {
    switch (keyValue) {
      case KeyType.padlock:
        for (int i = 0; i <= padlockCountLimit; i++) {
          print(_dataType);
          _keyType = keyValue;
        }
        break;
      case KeyType.button:
        for (int i = 0; i <= buttonCountLimit; i++) {
          print(_dataType);
          _keyType = keyValue;
        }
        break;
      case KeyType.dial:
        for (int i = 0; i <= dialCountLimit; i++) {
          print(_dataType);
          _keyType = keyValue;
        }
        break;
      case KeyType.finger:
        for (int i = 0; i <= fingerCountLimit; i++) {
          print(_dataType);
          _keyType = keyValue;
        }
        break;
      default:
        print('제시된 keyType 중에 선택해주세요');
    }
    return null;
  }
}

void main() {}
