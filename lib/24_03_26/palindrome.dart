String isPalindrome(String palindrome) {
  String result = '';
  String reverse = palindrome.split('').reversed.join();
  if (palindrome == reverse) {
    result = '$palindrome은 회문입니다.';
  } else {
    result = '$palindrome은 회문이 아닙니다.';
  }
  return result;
}