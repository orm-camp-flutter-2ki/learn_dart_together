bool checkPalindrom(String str) {
  String newStr = str.split('').reversed.toList().join();
  return newStr == str;
}
