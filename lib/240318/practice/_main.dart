import 'package:dart_cli_practice/240318/practice/StrongBox.dart';
import 'package:dart_cli_practice/240318/practice/key_type.dart';

void main() {
  StrongBox<String> vault = StrongBox(keyType: KeyType.finger);

  String item = "보물";

  vault.put(item);

  for(int i = 0; i < vault.keyType.requiredNumOfOpen + 1; i++) {
    print(vault.get());
  }
}