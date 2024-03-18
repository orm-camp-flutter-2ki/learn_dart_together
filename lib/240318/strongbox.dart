enum KeyType {padlock, button, dial, finger}

class StrongBox<T> { //오브젝트
  final KeyType _keyType;
  T _savedInstance;
  int _usedCnt = 0;

  //생성자
  StrongBox({required value, required keyType})
    : _savedInstance = value,
      _keyType = keyType;

  void put(T value) => _savedInstance = value; //setter

  T? get() { //getter
    var limitCnt = switch (_keyType) {
      KeyType.padlock => 1024,
      KeyType.button => 10000,
      KeyType.dial => 30000,
      KeyType.finger => 1000000
    };
    _usedCnt++; //시행할 때 마다 값이 올라
    return _usedCnt < limitCnt ? null : _savedInstance; //삼항연산자로 시행횟수까지 null 반환
    }
  }

void main() {
  var sb = StrongBox<String>(value: "룰루랄라", keyType: KeyType.dial);
  for (int i=0; i < 10; i++) {
    print(sb.get());
  }
}