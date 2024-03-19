enum KeyType { padlock, button, dial, finger }

class StrongBox<T> {
  static const padlockUsageValue = 1024;
  static const buttonUsageValue = 10000;
  static const dialUsageValue = 30000;
  static const fingerUsageValue = 1000000;

  T _data;
  int _usageCount = 0;
  final KeyType _keyType;

  StrongBox({required data, required keyType}) : _data = data, _keyType = keyType;

  void put(T data) => _data = data;
  T? getData() => _data;

  T? get() {
    _usageCount++;

    // 수정될 값이 아니니 final 로 변경
    final limitCount =
    // 패턴 매칭
    switch(_keyType) {
      KeyType.padlock => padlockUsageValue,
      KeyType.button => buttonUsageValue,
      KeyType.dial => dialUsageValue,
      KeyType.finger => fingerUsageValue,
    };

    return _usageCount < limitCount ? null : _data;
  }
}

void main() {
  StrongBox<String> strongBox = StrongBox(data: '열립니다.', keyType: KeyType.padlock);
  for( int i = 0; i < StrongBox.padlockUsageValue; i++ ) {
    print(strongBox.get());
  }
}
