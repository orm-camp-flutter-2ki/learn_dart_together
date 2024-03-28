bool isPalindrome(String s) {
  bool result = false;

  s = s.toLowerCase();

  String reversed = s.split('').reversed.toList().join('');

  if (s == reversed) {
    result = true;
  }

  return result;
}
