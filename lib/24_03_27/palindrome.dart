bool isPalindrome(String str) {
  String lowercaseStr = str.toLowerCase();

  int start = 0;
  int end = lowercaseStr.length - 1;

  while (start < end) {
    if (lowercaseStr[start] != lowercaseStr[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

void main() {
  String testStr = 'peep';
  // String testStr = 'ava';
  if (isPalindrome(testStr)) {
    print("$testStr 은 회문입니다");
  } else {
    print("$testStr 는 회문이 아닙니다.");
  }
}
