import 'package:collection/collection.dart';

bool checkPalindrom(String str) {
  String newStr = str.split('').reversed.toList().join();
  return newStr == str;
}

int biggestNum(List<int> list) {
  List<int> sortedList = list.sorted((a, b) => a.compareTo(b));
  final result =
      (sortedList.reversed.take(2).reduce((value, element) => value + element));

  return result;
}

int factorial(int n) {
  int number = 1;
  for (int i = 1; i <= n; i++) {
    number *= i;
  }
  print(number);
  return number;
}

void main() {
  factorial(5);
}
