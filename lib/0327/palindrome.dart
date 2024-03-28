import 'package:collection/collection.dart';

void main() {
  print(palindromeCheck('12321'));
  print(palindromeCheck('hello'));
  print(palindromeCheck('level'));
}

bool palindromeCheck(String string) {
  List<String> stringList = string.replaceAll(' ', '').toUpperCase().split('');
  return stringList.equals(stringList.reversed.toList());
}
