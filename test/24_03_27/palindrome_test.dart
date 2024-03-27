import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

bool checkingPalindrome(String string) {
  int lastIndex = string.length - 1;
  for (int i = 0; i < string.length ~/ 2; i++) {
    if (string[i] != string[lastIndex]) {
      return false;
    }
    --lastIndex;
  }
  return true;
}

void main() {
  test('회문인지 체크하는 테스트', () {
    // expect(checkingPalindrome('raaecar'), true);
    // expect(checkingPalindrome('hello'), false);
    expect(checkingPalindrome('aaba'), false);


  });
}
