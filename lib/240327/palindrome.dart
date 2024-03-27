bool palindrome(String value) {
  List<String> valueList = value.split('');
  int valueLength = valueList.length ~/ 2;
  bool check = true;
  for (int i = 0; i < valueLength; i++) {
    if (valueList[i] != valueList[valueList.length - 1 - i]) {
      check = false;
    }
  }
  return check;
}
