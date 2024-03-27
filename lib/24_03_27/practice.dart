import 'package:collection/collection.dart';

extension Palindrome on String {
  bool isPalindrome() {
    for (int i = 0; i < length / 2; i++) {
      if (this[i] != this[length - 1 - i]) return false;
    }
    return true;
  }
}

extension Sum on List<num> {
  num sumOfTop(int count) => sorted((a, b) => -a.compareTo(b))
      .sublist(0, (count > length) ? length : count)
      .sum;
}

int factorial(int number_) {
  int result = 1;
  int number = number_;
  while (number > 1) {
    result *= number--;
  }
  return result;
}
