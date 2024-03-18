import 'package:dart_cli_practice/240318/practice/StrongBox.dart';
import 'package:dart_cli_practice/240318/practice/key_type.dart';
import 'package:dart_cli_practice/240318/practice/word.dart';

void main() {
  StrongBox<String> vault = StrongBox(keyType: KeyType.finger);

  String item = "보물";

  vault.put(item);

  for(int i = 0; i < vault.keyType.requiredNumOfOpen + 1; i++) {
    print(vault.get());
  }

  final word = Word();
  word.word = 'Lorem ipsum dolor sit amet.';

  print('문자열의 길이는 ${word.word.length}');
  print(word.isVowel(1));
  print(word.isConsonant(1));
}