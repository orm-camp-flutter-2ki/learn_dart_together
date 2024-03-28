class TopLevel {
  bool isPalindrome(String str) {
    //회문인지를 판별하는 함수
    String lowercaseStr = str.toLowerCase();
    String uppercaseStr = str.toUpperCase();

    bool checkPalindrome(String text) {
      return text == text.split('').reversed.join('');
    }

    return checkPalindrome(lowercaseStr) || checkPalindrome(uppercaseStr);
  }
}
