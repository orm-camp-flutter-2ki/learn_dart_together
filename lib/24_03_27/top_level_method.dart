bool checkPalindrome(String word) {
  bool result = false;
  String reversed = word.split('').reversed.toList().join();

  result = word == reversed ? true : false;

  return result;
}