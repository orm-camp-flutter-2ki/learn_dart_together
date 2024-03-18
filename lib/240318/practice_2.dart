enum KeyType { padlock, button, dial, finger }

class StrongBox {
  static const padlockUsageValue = 1024;
  static const buttonUsageValue = 10000;
  static const dialUsageValue = 30000;
  static const fingerUsageValue = 1000000;

  KeyType keyType;
  int usageCount = 0;

  StrongBox(this.keyType);

  String? get() {
    usageCount++;

    switch (keyType) {
      case KeyType.padlock:
        if (usageCount <= padlockUsageValue) {
          return null;
        }
      case KeyType.button:
        if (usageCount <= buttonUsageValue) {
          return null;
        }
      case KeyType.dial:
        if (usageCount <= dialUsageValue) {
          return null;
        }
      case KeyType.finger:
        if (usageCount <= fingerUsageValue) {
          return null;
        }
    }

    return '사용 횟수 $usageCount가 넘어 금고가 열렸습니다.';
  }
}

void main() {
  StrongBox padlock = StrongBox(KeyType.padlock);
  StrongBox button = StrongBox(KeyType.button);
  print('padlock.get() > ${padlock.get()}');
  print('padlock.get() > ${padlock.get()}');
  print('padlock.get() > ${padlock.get()}');
  print('padlock.get() > ${padlock.get()}');
  print('button.get() > ${button.get()}');
  print('button.get() > ${button.get()}');
  print('button.get() > ${button.get()}');
  print('button.get() > ${button.get()}');
}
