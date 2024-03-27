import 'package:collection/collection.dart';

class PracticeService {
  bool isPalindrome(String text) {
    return text.toLowerCase() == text.toLowerCase().split('').reversed.join();
  }

  int sumOfLargestTwoNumbers(List<int> numbers) {
    final [one, two, ...] = numbers.sorted(_compareDescending);
    return one + two;
  }

  int _compareDescending(int a, int b) {
    return b - a;
  }

  int factorial(int n) {
    return n <= 0 ? 1 : n * factorial(n - 1);
  }
}
