bool isPalindrome(String input) {
  int p1 = 0;
  int p2 = input.length - 1;

  while (p1 < p2) {
    if (input[p1] != input[p2]) return false;
    p1 += 1;
    p2 -= 1;
  }

  return true;
}