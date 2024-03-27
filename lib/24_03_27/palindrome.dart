bool palindrome(String value) {
  bool result = false;

  String cleanString = value.toLowerCase().replaceAll(' ', '');

  String reverseString = cleanString.split('').reversed.join();

  if (cleanString == reverseString) {
    print('"$value"는 회문입니다.');
    result = true;
  } else {
    print('"$value"는 회문이 아닙니다.');
    result;
  }
  return result;
}
