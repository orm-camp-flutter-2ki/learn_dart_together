import 'package:learn_dart_together/24_03_18/strongBox.dart';

final KeyType keyType = KeyType.padlock;

void main() {
  StrongBox<String> padlockBox = StrongBox<String>(KeyType.padlock);
  StrongBox<String> buttonBox = StrongBox<String>(KeyType.button);
  StrongBox<String> dialBox = StrongBox<String>(KeyType.dial);
  StrongBox<String> fingerBox = StrongBox<String>(KeyType.finger);

  padlockBox.put('padlock');
  buttonBox.put('button');
  dialBox.put('dial');
  fingerBox.put('finger');

  // 최대 사용 횟수까지 아이템을 얻기
  String? getItemBeforeLimit(StrongBox box) {
    int maxUsage = _getMaxUsage(); // 최대 사용 횟수 가져오기
    for (int i = 0; i < maxUsage; i++) {
      String? item = box.get();
      if (item != null) {
        return item;
      }
    }
    return null;
  }

  // padlock 상자에서 아이템 가져오기
  String? padlock = getItemBeforeLimit(padlockBox);
  if (padlock != null) {
    print(padlock);
  }

  // button 상자에서 아이템 가져오기
  String? button = getItemBeforeLimit(buttonBox);
  if (button != null) {
    print(button);
  }

  // dial 상자에서 아이템 가져오기
  String? dial = getItemBeforeLimit(dialBox);
  if (dial != null) {
    print(dial);
  }

  // finger 상자에서 아이템 가져오기
  String? finger = getItemBeforeLimit(fingerBox);
  if (finger != null) {
    print(finger);
  }
}

int _getMaxUsage() {
  switch (keyType) {
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