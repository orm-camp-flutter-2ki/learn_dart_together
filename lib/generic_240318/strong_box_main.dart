import 'strong_box.dart';

void main() {
  StrongBox<int> padlockKey = StrongBox<int>(keyType: KeyType.padlock);
  StrongBox<int> buttonKey = StrongBox<int>(keyType: KeyType.button);
  StrongBox<int> dialKey = StrongBox<int>(keyType: KeyType.dial);
  StrongBox<int> fingerKey = StrongBox<int>(keyType: KeyType.finger);

  // padlock Key
  for (int i = 0; i < padlockKey.maxLimitedUsage(); i++) {
    padlockKey.get();
    print(padlockKey.counter);
  }

  // button Key
  for (int i = 0; i < buttonKey.maxLimitedUsage(); i++) {
    buttonKey.get();
    print(buttonKey.counter);
  }

  // dial Key
  for (int i = 0; i < dialKey.maxLimitedUsage(); i++) {
    dialKey.get();
    print(dialKey.counter);
  }

  // finger Key
  for (int i = 0; i < fingerKey.maxLimitedUsage(); i++) {
    fingerKey.get();
    print(fingerKey.counter);
  }

}
