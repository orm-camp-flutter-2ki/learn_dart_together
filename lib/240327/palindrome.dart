bool isPalindrome(String text) {
  final List<String> textList = text.split('');
  bool result = true;

  for (int i = 0; i < (textList.length) / 2; i++) {
    if (textList[i] != textList[textList.length - i - 1]) {
      result = false;
    }
  }

  return result;
}