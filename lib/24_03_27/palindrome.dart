bool palindrome(String string) {
  String reversString = string.split('').reversed.join(''); // 각 문자 분리(split), 분리된 문자열 역순으로(reversed), 다시 합침(join)
  return string == reversString;  // 두 개 비교 후 두 문자열이 같다면 true, 그렇지 않으면 false
}
