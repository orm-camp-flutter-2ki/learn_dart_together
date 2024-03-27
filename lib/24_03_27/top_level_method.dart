import 'package:collection/collection.dart';

bool checkPalindrome(String word) {
  bool result = false;
  String reversed = word.split('').reversed.toList().join();

  result = word == reversed ? true : false;

  return result;
}

int getMaxSum(List<int> numbers) {
  int result;
  List<int> ordered = numbers.sorted((a, b) => a.compareTo(b));

  switch (numbers.length) {
    case 0 :
      result = 0;
    case 1 :
      result = ordered.removeLast();
    default :
      result = ordered.removeLast() + ordered.removeLast();
  }

  return result;
}

int getFactorial(int n) {
  int result = 1;

  for (int i = 1; i <= n; i++) {
    result = result * i;
  }

  return result;
}