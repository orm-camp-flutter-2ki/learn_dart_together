import 'package:collection/collection.dart';

class PracticeService {
  bool isPalindrome(String text) {
    return text.toLowerCase() == text.toLowerCase().split('').reversed.join();
  }

  int sumOfLargestTwoNumbers(List<int> numbers) {
    int result;
    if (numbers.length < 3) {
      result = numbers.sum;
    } else {
      final [one, two, ...] = numbers.sorted(_compareDescending);
      result = one + two;
    }

    return result;
  }

  int _compareDescending(int a, int b) {
    return b - a;
  }

  int factorial(int n) {
    return n <= 0 ? 1 : n * factorial(n - 1);
  }
}
