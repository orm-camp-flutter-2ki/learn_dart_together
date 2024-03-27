extension Palindrome on String {
  bool isPalindrome() {
    // // 알파벳 숫자를 제외한 모든 코드를 지우고 알파벳에 경우 소문자로 만드는 코드
    // String cleanWord =
    //     word.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();
    //
    // // 화문이 맞는지 확인하는 코드
    // return cleanWord == cleanWord.split('').reversed.join('');

    for (int i = 0; i < length / 2; i++) {
      if (this[i] != this[length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}
