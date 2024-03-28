String checkPailindrome(String text) {
  String message = '"$text"는 회문입니다.';
  if (text.length % 2 == 1) {
    for (int i = 0; i < text.length / 2 - 1; i++) {
      print('${text[i]}와 ${text[text.length - 1]}');
      if (text[i] == text[text.length - 1 - i]) {
      } else {
        message = '"$text"는 회문이 아닙니다.';
      }
    }
  } else {
    message = '"$text"는 회문이 아닙니다.';
  }
  return message;
}
